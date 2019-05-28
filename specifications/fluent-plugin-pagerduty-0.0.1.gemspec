# -*- encoding: utf-8 -*-
# stub: fluent-plugin-pagerduty 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "fluent-plugin-pagerduty".freeze
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kentaro Yoshida".freeze]
  s.date = "2017-03-19"
  s.description = "Fluentd Input plugin to replay alert notification for PagerDuty API.".freeze
  s.email = ["y.ken.studio@gmail.com".freeze]
  s.homepage = "https://github.com/y-ken/fluent-plugin-pagerduty".freeze
  s.licenses = ["Apache License, Version 2.0".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Fluentd Input plugin to replay alert notification for PagerDuty API.".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<fluentd>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<pagerduty>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<fluentd>.freeze, [">= 0"])
      s.add_dependency(%q<pagerduty>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<fluentd>.freeze, [">= 0"])
    s.add_dependency(%q<pagerduty>.freeze, [">= 0"])
  end
end
