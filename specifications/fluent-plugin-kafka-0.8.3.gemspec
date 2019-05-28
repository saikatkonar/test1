# -*- encoding: utf-8 -*-
# stub: fluent-plugin-kafka 0.8.3 ruby lib

Gem::Specification.new do |s|
  s.name = "fluent-plugin-kafka".freeze
  s.version = "0.8.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Hidemasa Togashi".freeze, "Masahiro Nakagawa".freeze]
  s.date = "2018-12-16"
  s.description = "Fluentd plugin for Apache Kafka > 0.8".freeze
  s.email = ["togachiro@gmail.com".freeze, "repeatedly@gmail.com".freeze]
  s.homepage = "https://github.com/fluent/fluent-plugin-kafka".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Fluentd plugin for Apache Kafka > 0.8".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fluentd>.freeze, ["< 2", ">= 0.10.58"])
      s.add_runtime_dependency(%q<ltsv>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<ruby-kafka>.freeze, ["< 0.8.0", ">= 0.7.1"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0.9.2"])
      s.add_development_dependency(%q<test-unit>.freeze, [">= 3.0.8"])
    else
      s.add_dependency(%q<fluentd>.freeze, ["< 2", ">= 0.10.58"])
      s.add_dependency(%q<ltsv>.freeze, [">= 0"])
      s.add_dependency(%q<ruby-kafka>.freeze, ["< 0.8.0", ">= 0.7.1"])
      s.add_dependency(%q<rake>.freeze, [">= 0.9.2"])
      s.add_dependency(%q<test-unit>.freeze, [">= 3.0.8"])
    end
  else
    s.add_dependency(%q<fluentd>.freeze, ["< 2", ">= 0.10.58"])
    s.add_dependency(%q<ltsv>.freeze, [">= 0"])
    s.add_dependency(%q<ruby-kafka>.freeze, ["< 0.8.0", ">= 0.7.1"])
    s.add_dependency(%q<rake>.freeze, [">= 0.9.2"])
    s.add_dependency(%q<test-unit>.freeze, [">= 3.0.8"])
  end
end
