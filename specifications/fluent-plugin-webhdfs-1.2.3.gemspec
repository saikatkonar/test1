# -*- encoding: utf-8 -*-
# stub: fluent-plugin-webhdfs 1.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "fluent-plugin-webhdfs".freeze
  s.version = "1.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["TAGOMORI Satoshi".freeze]
  s.date = "2017-12-21"
  s.description = "For WebHDFS and HttpFs of Hadoop HDFS".freeze
  s.email = ["tagomoris@gmail.com".freeze]
  s.homepage = "https://github.com/fluent/fluent-plugin-webhdfs".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Fluentd plugin to write data on HDFS over WebHDFS, with flexible formatting".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
      s.add_development_dependency(%q<test-unit-rr>.freeze, [">= 0"])
      s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_development_dependency(%q<snappy>.freeze, [">= 0.0.13"])
      s.add_development_dependency(%q<bzip2-ffi>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<fluentd>.freeze, [">= 0.14.4"])
      s.add_runtime_dependency(%q<webhdfs>.freeze, [">= 0.6.0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<test-unit>.freeze, [">= 0"])
      s.add_dependency(%q<test-unit-rr>.freeze, [">= 0"])
      s.add_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_dependency(%q<snappy>.freeze, [">= 0.0.13"])
      s.add_dependency(%q<bzip2-ffi>.freeze, [">= 0"])
      s.add_dependency(%q<fluentd>.freeze, [">= 0.14.4"])
      s.add_dependency(%q<webhdfs>.freeze, [">= 0.6.0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit-rr>.freeze, [">= 0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<snappy>.freeze, [">= 0.0.13"])
    s.add_dependency(%q<bzip2-ffi>.freeze, [">= 0"])
    s.add_dependency(%q<fluentd>.freeze, [">= 0.14.4"])
    s.add_dependency(%q<webhdfs>.freeze, [">= 0.6.0"])
  end
end
