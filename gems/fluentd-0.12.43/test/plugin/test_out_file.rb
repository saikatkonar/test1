require_relative '../helper'
require 'fluent/test'
require 'fileutils'
require 'time'

class FileOutputTest < Test::Unit::TestCase
  def setup
    Fluent::Test.setup
    FileUtils.rm_rf(TMP_DIR)
    FileUtils.mkdir_p(TMP_DIR)
  end

  TMP_DIR = File.expand_path(File.dirname(__FILE__) + "/../tmp/out_file#{ENV['TEST_ENV_NUMBER']}")
  SYMLINK_PATH = File.expand_path("#{TMP_DIR}/current")

  CONFIG = %[
    path #{TMP_DIR}/out_file_test
    compress gz
    utc
  ]

  def create_driver(conf = CONFIG)
    Fluent::Test::TimeSlicedOutputTestDriver.new(Fluent::FileOutput).configure(conf)
  end

  def with_timezone(timezone = 'UTC', &block)
    old = ENV['TZ']
    ENV['TZ'] = timezone
    output = yield
    ENV['TZ'] = old
    output
  end

  def test_configure
    d = create_driver %[
      path test_path
      compress gz
    ]
    assert_equal 'test_path', d.instance.path
    assert_equal :gz, d.instance.compress
  end

  def test_path_writable
    assert_nothing_raised do
      create_driver %[path #{TMP_DIR}/test_path]
    end

    assert_nothing_raised do
      FileUtils.mkdir_p("#{TMP_DIR}/test_dir")
      File.chmod(0777, "#{TMP_DIR}/test_dir")
      create_driver %[path #{TMP_DIR}/test_dir/foo/bar/baz]
    end

    assert_raise(Fluent::ConfigError) do
      FileUtils.mkdir_p("#{TMP_DIR}/test_dir")
      File.chmod(0555, "#{TMP_DIR}/test_dir")
      create_driver %[path #{TMP_DIR}/test_dir/foo/bar/baz]
    end
  end

  def test_default_localtime
    d = create_driver(%[path #{TMP_DIR}/out_file_test])
    time = Time.parse("2011-01-02 13:14:15 UTC").to_i

    with_timezone('Asia/Taipei') do
      d.emit({"a"=>1}, time)
      d.expect_format %[2011-01-02T21:14:15+08:00\ttest\t{"a":1}\n]
      d.run
    end
  end

  def test_format
    d = create_driver

    time = Time.parse("2011-01-02 13:14:15 UTC").to_i
    d.emit({"a"=>1}, time)
    d.emit({"a"=>2}, time)

    d.expect_format %[2011-01-02T13:14:15Z\ttest\t{"a":1}\n]
    d.expect_format %[2011-01-02T13:14:15Z\ttest\t{"a":2}\n]

    d.run
  end

  def test_timezone_1
    d = create_driver %[
      path #{TMP_DIR}/out_file_test
      timezone Asia/Taipei
    ]

    time = Time.parse("2011-01-02 13:14:15 UTC").to_i

    d.emit({"a"=>1}, time)
    d.expect_format %[2011-01-02T21:14:15+08:00\ttest\t{"a":1}\n]
    d.run
  end

  def test_timezone_2
    d = create_driver %[
      path #{TMP_DIR}/out_file_test
      timezone -03:30
    ]

    time = Time.parse("2011-01-02 13:14:15 UTC").to_i

    d.emit({"a"=>1}, time)
    d.expect_format %[2011-01-02T09:44:15-03:30\ttest\t{"a":1}\n]
    d.run
  end

  def test_timezone_invalid
    assert_raise(Fluent::ConfigError) do
      create_driver %[
        path #{TMP_DIR}/out_file_test
        timezone Invalid/Invalid
      ]
    end
  end

  def check_gzipped_result(path, expect)
    # Zlib::GzipReader has a bug of concatenated file: https://bugs.ruby-lang.org/issues/9790
    # Following code from https://www.ruby-forum.com/topic/971591#979520
    result = ''
    File.open(path) { |io|
      loop do
        gzr = Zlib::GzipReader.new(io)
        result << gzr.read
        unused = gzr.unused
        gzr.finish
        break if unused.nil?
        io.pos -= unused.length
      end
    }

    assert_equal expect, result
  end

  def test_write
    d = create_driver

    time = Time.parse("2011-01-02 13:14:15 UTC").to_i
    d.emit({"a"=>1}, time)
    d.emit({"a"=>2}, time)

    # FileOutput#write returns path
    paths = d.run
    expect_paths = ["#{TMP_DIR}/out_file_test.20110102_0.log.gz"]
    assert_equal expect_paths, paths

    check_gzipped_result(paths[0], %[2011-01-02T13:14:15Z\ttest\t{"a":1}\n] + %[2011-01-02T13:14:15Z\ttest\t{"a":2}\n])
  end

  def test_write_with_format_json
    d = create_driver [CONFIG, 'format json', 'include_time_key true', 'time_as_epoch'].join("\n")

    time = Time.parse("2011-01-02 13:14:15 UTC").to_i
    d.emit({"a"=>1}, time)
    d.emit({"a"=>2}, time)

    # FileOutput#write returns path
    paths = d.run
    check_gzipped_result(paths[0], %[#{Yajl.dump({"a" => 1, 'time' => time})}\n] + %[#{Yajl.dump({"a" => 2, 'time' => time})}\n])
  end

  def test_write_with_format_ltsv
    d = create_driver [CONFIG, 'format ltsv', 'include_time_key true'].join("\n")

    time = Time.parse("2011-01-02 13:14:15 UTC").to_i
    d.emit({"a"=>1}, time)
    d.emit({"a"=>2}, time)

    # FileOutput#write returns path
    paths = d.run
    check_gzipped_result(paths[0], %[a:1\ttime:2011-01-02T13:14:15Z\n] + %[a:2\ttime:2011-01-02T13:14:15Z\n])
  end

  def test_write_with_format_single_value
    d = create_driver [CONFIG, 'format single_value', 'message_key a'].join("\n")

    time = Time.parse("2011-01-02 13:14:15 UTC").to_i
    d.emit({"a"=>1}, time)
    d.emit({"a"=>2}, time)

    # FileOutput#write returns path
    paths = d.run
    check_gzipped_result(paths[0], %[1\n] + %[2\n])
  end

  def test_write_path_increment
    time = Time.parse("2011-01-02 13:14:15 UTC").to_i
    formatted_lines = %[2011-01-02T13:14:15Z\ttest\t{"a":1}\n] + %[2011-01-02T13:14:15Z\ttest\t{"a":2}\n]

    write_once = ->(){
      d = create_driver
      d.emit({"a"=>1}, time)
      d.emit({"a"=>2}, time)
      d.run
    }

    assert !File.exist?("#{TMP_DIR}/out_file_test.20110102_0.log.gz")

    # FileOutput#write returns path
    paths = write_once.call
    assert_equal ["#{TMP_DIR}/out_file_test.20110102_0.log.gz"], paths
    check_gzipped_result(paths[0], formatted_lines)
    assert_equal 1, Dir.glob("#{TMP_DIR}/out_file_test.*").size

    paths = write_once.call
    assert_equal ["#{TMP_DIR}/out_file_test.20110102_1.log.gz"], paths
    check_gzipped_result(paths[0], formatted_lines)
    assert_equal 2, Dir.glob("#{TMP_DIR}/out_file_test.*").size

    paths = write_once.call
    assert_equal ["#{TMP_DIR}/out_file_test.20110102_2.log.gz"], paths
    check_gzipped_result(paths[0], formatted_lines)
    assert_equal 3, Dir.glob("#{TMP_DIR}/out_file_test.*").size
  end

  def test_write_with_append
    time = Time.parse("2011-01-02 13:14:15 UTC").to_i
    formatted_lines = %[2011-01-02T13:14:15Z\ttest\t{"a":1}\n] + %[2011-01-02T13:14:15Z\ttest\t{"a":2}\n]

    write_once = ->(){
      d = create_driver %[
        path #{TMP_DIR}/out_file_test
        compress gz
        utc
        append true
      ]
      d.emit({"a"=>1}, time)
      d.emit({"a"=>2}, time)
      d.run
    }

    # FileOutput#write returns path
    paths = write_once.call
    assert_equal ["#{TMP_DIR}/out_file_test.20110102.log.gz"], paths
    check_gzipped_result(paths[0], formatted_lines)
    paths = write_once.call
    assert_equal ["#{TMP_DIR}/out_file_test.20110102.log.gz"], paths
    check_gzipped_result(paths[0], formatted_lines * 2)
    paths = write_once.call
    assert_equal ["#{TMP_DIR}/out_file_test.20110102.log.gz"], paths
    check_gzipped_result(paths[0], formatted_lines * 3)
  end

  def test_write_with_symlink
    conf = CONFIG + %[
      symlink_path #{SYMLINK_PATH}
    ]
    symlink_path = "#{SYMLINK_PATH}"

    Fluent::FileBuffer.clear_buffer_paths
    d = Fluent::Test::TestDriver.new(Fluent::FileOutput).configure(conf)

    begin
      d.instance.start
      10.times { sleep 0.05 }
      time = Time.parse("2011-01-02 13:14:15 UTC").to_i
      es = Fluent::OneEventStream.new(time, {"a"=>1})
      d.instance.emit('tag', es, Fluent::NullOutputChain.instance)

      assert File.exists?(symlink_path)
      assert File.symlink?(symlink_path)

      d.instance.enqueue_buffer

      assert !File.exists?(symlink_path)
      assert File.symlink?(symlink_path)
    ensure
      d.instance.shutdown
      FileUtils.rm_rf(symlink_path)
    end
  end

  sub_test_case 'path' do
    test 'normal' do
      d = create_driver(%[
        path #{TMP_DIR}/out_file_test
        time_slice_format %Y-%m-%d-%H
        utc true
      ])
      time = Time.parse("2011-01-02 13:14:15 UTC").to_i
      d.emit({"a"=>1}, time)
      # FileOutput#write returns path
      paths = d.run
      assert_equal ["#{TMP_DIR}/out_file_test.2011-01-02-13_0.log"], paths
    end

    test 'normal with append' do
      d = create_driver(%[
        path #{TMP_DIR}/out_file_test
        time_slice_format %Y-%m-%d-%H
        utc true
        append true
      ])
      time = Time.parse("2011-01-02 13:14:15 UTC").to_i
      d.emit({"a"=>1}, time)
      paths = d.run
      assert_equal ["#{TMP_DIR}/out_file_test.2011-01-02-13.log"], paths
    end

    test '*' do
      d = create_driver(%[
        path #{TMP_DIR}/out_file_test.*.txt
        time_slice_format %Y-%m-%d-%H
        utc true
      ])
      time = Time.parse("2011-01-02 13:14:15 UTC").to_i
      d.emit({"a"=>1}, time)
      paths = d.run
      assert_equal ["#{TMP_DIR}/out_file_test.2011-01-02-13_0.txt"], paths
    end

    test '* with append' do
      d = create_driver(%[
        path #{TMP_DIR}/out_file_test.*.txt
        time_slice_format %Y-%m-%d-%H
        utc true
        append true
      ])
      time = Time.parse("2011-01-02 13:14:15 UTC").to_i
      d.emit({"a"=>1}, time)
      paths = d.run
      assert_equal ["#{TMP_DIR}/out_file_test.2011-01-02-13.txt"], paths
    end
  end
end

