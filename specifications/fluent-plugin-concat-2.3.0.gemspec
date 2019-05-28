# -*- encoding: utf-8 -*-
# stub: fluent-plugin-concat 2.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "fluent-plugin-concat".freeze
  s.version = "2.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kenji Okimoto".freeze]
  s.date = "2018-07-23"
  s.description = "Fluentd Filter plugin to concat multiple event messages".freeze
  s.email = ["okimoto@clear-code.com".freeze]
  s.homepage = "https://github.com/fluent-plugins-nursery/fluent-plugin-concat".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Fluentd Filter plugin to concat multiple event messages".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fluentd>.freeze, ["< 2", ">= 0.14.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.11"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_development_dependency(%q<test-unit>.freeze, [">= 3.1.0"])
      s.add_development_dependency(%q<test-unit-rr>.freeze, [">= 0"])
      s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
    else
      s.add_dependency(%q<fluentd>.freeze, ["< 2", ">= 0.14.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.11"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_dependency(%q<test-unit>.freeze, [">= 3.1.0"])
      s.add_dependency(%q<test-unit-rr>.freeze, [">= 0"])
      s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<fluentd>.freeze, ["< 2", ">= 0.14.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.11"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 3.1.0"])
    s.add_dependency(%q<test-unit-rr>.freeze, [">= 0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
  end
end
