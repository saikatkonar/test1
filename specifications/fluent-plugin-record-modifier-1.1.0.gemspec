# -*- encoding: utf-8 -*-
# stub: fluent-plugin-record-modifier 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "fluent-plugin-record-modifier".freeze
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Masahiro Nakagawa".freeze]
  s.date = "2018-06-01"
  s.description = "Filter plugin for modifying event record".freeze
  s.email = "repeatedly@gmail.com".freeze
  s.homepage = "https://github.com/repeatedly/fluent-plugin-record-modifier".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Filter plugin for modifying event record".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fluentd>.freeze, ["< 2", ">= 0.14.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0.9.2"])
      s.add_development_dependency(%q<test-unit>.freeze, ["~> 3.1.4"])
    else
      s.add_dependency(%q<fluentd>.freeze, ["< 2", ">= 0.14.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0.9.2"])
      s.add_dependency(%q<test-unit>.freeze, ["~> 3.1.4"])
    end
  else
    s.add_dependency(%q<fluentd>.freeze, ["< 2", ">= 0.14.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0.9.2"])
    s.add_dependency(%q<test-unit>.freeze, ["~> 3.1.4"])
  end
end
