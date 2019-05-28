# -*- encoding: utf-8 -*-
# stub: fluent-plugin-td-monitoring 0.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "fluent-plugin-td-monitoring".freeze
  s.version = "0.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Masahiro Nakagawa".freeze]
  s.date = "2018-03-27"
  s.description = "".freeze
  s.email = ["masa@treasure-data.com".freeze]
  s.homepage = "http://www.treasuredata.com/".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubygems_version = "2.6.14".freeze
  s.summary = "".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fluentd>.freeze, [">= 0.10.33"])
      s.add_runtime_dependency(%q<mixlib-cli>.freeze, ["~> 1.7.0"])
      s.add_runtime_dependency(%q<mixlib-config>.freeze, ["<= 2.2.4"])
      s.add_runtime_dependency(%q<mixlib-log>.freeze, ["~> 1.7.1"])
      s.add_runtime_dependency(%q<mixlib-shellout>.freeze, ["~> 2.2.7"])
      s.add_runtime_dependency(%q<ohai>.freeze, ["~> 6.20.0"])
      s.add_runtime_dependency(%q<httpclient>.freeze, ["~> 2.7"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0.9.2"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0.5.4"])
      s.add_development_dependency(%q<rr>.freeze, [">= 1.0.0"])
    else
      s.add_dependency(%q<fluentd>.freeze, [">= 0.10.33"])
      s.add_dependency(%q<mixlib-cli>.freeze, ["~> 1.7.0"])
      s.add_dependency(%q<mixlib-config>.freeze, ["<= 2.2.4"])
      s.add_dependency(%q<mixlib-log>.freeze, ["~> 1.7.1"])
      s.add_dependency(%q<mixlib-shellout>.freeze, ["~> 2.2.7"])
      s.add_dependency(%q<ohai>.freeze, ["~> 6.20.0"])
      s.add_dependency(%q<httpclient>.freeze, ["~> 2.7"])
      s.add_dependency(%q<rake>.freeze, [">= 0.9.2"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0.5.4"])
      s.add_dependency(%q<rr>.freeze, [">= 1.0.0"])
    end
  else
    s.add_dependency(%q<fluentd>.freeze, [">= 0.10.33"])
    s.add_dependency(%q<mixlib-cli>.freeze, ["~> 1.7.0"])
    s.add_dependency(%q<mixlib-config>.freeze, ["<= 2.2.4"])
    s.add_dependency(%q<mixlib-log>.freeze, ["~> 1.7.1"])
    s.add_dependency(%q<mixlib-shellout>.freeze, ["~> 2.2.7"])
    s.add_dependency(%q<ohai>.freeze, ["~> 6.20.0"])
    s.add_dependency(%q<httpclient>.freeze, ["~> 2.7"])
    s.add_dependency(%q<rake>.freeze, [">= 0.9.2"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0.5.4"])
    s.add_dependency(%q<rr>.freeze, [">= 1.0.0"])
  end
end
