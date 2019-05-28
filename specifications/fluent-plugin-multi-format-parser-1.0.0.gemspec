# -*- encoding: utf-8 -*-
# stub: fluent-plugin-multi-format-parser 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "fluent-plugin-multi-format-parser".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Masahiro Nakagawa".freeze]
  s.date = "2017-12-14"
  s.description = "Multi format parser plugin for Fluentd".freeze
  s.email = "repeatedly@gmail.com".freeze
  s.homepage = "https://github.com/repeatedly/fluent-plugin-multi-format-parser".freeze
  s.licenses = ["Apache License (2.0)".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Multi format parser plugin for Fluentd".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fluentd>.freeze, ["< 2", ">= 0.14.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0.9.2"])
    else
      s.add_dependency(%q<fluentd>.freeze, ["< 2", ">= 0.14.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0.9.2"])
    end
  else
    s.add_dependency(%q<fluentd>.freeze, ["< 2", ">= 0.14.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0.9.2"])
  end
end
