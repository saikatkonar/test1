require_relative '../helper'
require 'fluent/test'

class UdpInputTest < Test::Unit::TestCase
  def setup
    Fluent::Test.setup
  end

  PORT = unused_port
  BASE_CONFIG = %[
    port #{PORT}
    tag udp
  ]
  CONFIG = BASE_CONFIG + %!
    bind 127.0.0.1
    format /^\\[(?<time>[^\\]]*)\\] (?<message>.*)/
  !
  IPv6_CONFIG = BASE_CONFIG + %!
    bind ::1
    format /^\\[(?<time>[^\\]]*)\\] (?<message>.*)/
  !

  def create_driver(conf)
    Fluent::Test::InputTestDriver.new(Fluent::UdpInput).configure(conf)
  end

  def test_configure
    configs = {'127.0.0.1' => CONFIG}
    configs.merge!('::1' => IPv6_CONFIG) if ipv6_enabled?

    configs.each_pair { |k, v|
      d = create_driver(v)
      assert_equal PORT, d.instance.port
      assert_equal k, d.instance.bind
      assert_equal 4096, d.instance.message_length_limit
      assert_equal nil, d.instance.receive_buffer_size
    }
  end

  data(
    'message_length_limit' => 'message_length_limit 2048',
    'body_size_limit' => 'body_size_limit 2048'
  )
  test 'message_length_limit/body_size_limit compatibility' do |param|
    d = create_driver(CONFIG + param)
    assert_equal 2048, d.instance.message_length_limit
  end

  def test_time_format
    configs = {'127.0.0.1' => CONFIG}
    configs.merge!('::1' => IPv6_CONFIG) if ipv6_enabled?

    configs.each_pair { |k, v|
      d = create_driver(v)

      tests = [
        {'msg' => '[Sep 11 00:00:00] localhost logger: foo', 'expected' => Time.strptime('Sep 11 00:00:00', '%b %d %H:%M:%S').to_i},
        {'msg' => '[Sep  1 00:00:00] localhost logger: foo', 'expected' => Time.strptime('Sep  1 00:00:00', '%b  %d %H:%M:%S').to_i},
      ]

      d.run do
        u = Fluent::SocketUtil.create_udp_socket(k)
        u.connect(k, PORT)
        tests.each {|test|
          u.send(test['msg'], 0)
        }
        sleep 1
      end

      emits = d.emits
      emits.each_index {|i|
        assert_equal(tests[i]['expected'], emits[i][1])
      }
    }
  end

  {
    'none' => [
      {'msg' => "tcptest1\n", 'expected' => 'tcptest1'},
      {'msg' => "tcptest2\n", 'expected' => 'tcptest2'},
    ],
    'json' => [
      {'msg' => {'k' => 123, 'message' => 'tcptest1'}.to_json + "\n", 'expected' => 'tcptest1'},
      {'msg' => {'k' => 'tcptest2', 'message' => 456}.to_json + "\n", 'expected' => 456},
    ],
    '/^\\[(?<time>[^\\]]*)\\] (?<message>.*)/' => [
      {'msg' => '[Sep 10 00:00:00] localhost: ' + 'x' * 100 + "\n", 'expected' => 'localhost: ' + 'x' * 100},
      {'msg' => '[Sep 10 00:00:00] localhost: ' + 'x' * 1024 + "\n", 'expected' => 'localhost: ' + 'x' * 1024},
    ]
  }.each { |format, test_cases|
    define_method("test_msg_size_#{format[0] == '/' ? 'regexp' : format}") do
      d = create_driver(BASE_CONFIG + "format #{format}")
      tests = test_cases

      d.run do
        u = UDPSocket.new
        u.connect('127.0.0.1', PORT)
        tests.each { |test|
          u.send(test['msg'], 0)
        }
        sleep 1
      end

      compare_test_result(d.emits, tests)
    end
  }

  test "remove_newline" do
    tests = [{'msg' => "test1\n", 'expected' => "test1\n"},
             {'msg' => "test2\n", 'expected' => "test2\n"}]

    d = create_driver(BASE_CONFIG + %!
      format none
      remove_newline false
    !)
    d.run do
      u = UDPSocket.new
      u.connect('127.0.0.1', PORT)
      tests.each { |test|
        u.send(test['msg'], 0)
      }
      sleep 1
    end

    compare_test_result(d.emits, tests)
  end

  test "receive_buffer_size" do
    # don't check exact value because it depends on platform and condition

    # check if default socket and in_udp's one without receive_buffer_size have same size buffer
    d0 = create_driver(BASE_CONFIG + %!
      format none
    !)
    d0.run do
      begin
        sock = d0.instance.instance_variable_get(:@handler).instance_variable_get(:@io)
        default_sock = UDPSocket.new
        assert_equal(default_sock.getsockopt(Socket::SOL_SOCKET, Socket::SO_RCVBUF).int, sock.getsockopt(Socket::SOL_SOCKET, Socket::SO_RCVBUF).int)
      ensure
        default_sock.close
      end
    end

    # check if default socket and in_udp's one with receive_buffer_size have different size buffer
    d1 = create_driver(BASE_CONFIG + %!
      format none
      receive_buffer_size 1001
    !)
    d1.run do
      sock = d1.instance.instance_variable_get(:@handler).instance_variable_get(:@io)
      begin
        default_sock = UDPSocket.new
        assert_not_equal(default_sock.getsockopt(Socket::SOL_SOCKET, Socket::SO_RCVBUF).int, sock.getsockopt(Socket::SOL_SOCKET, Socket::SO_RCVBUF).int)
      ensure
        default_sock.close
      end
    end
  end

  def compare_test_result(emits, tests)
    assert_equal(2, emits.size)
    emits.each_index {|i|
      assert_equal(tests[i]['expected'], emits[i][2]['message'])
    }
  end
end
