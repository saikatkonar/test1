# -*- encoding: utf-8 -*-
# stub: ohai 6.20.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ohai".freeze
  s.version = "6.20.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Adam Jacob".freeze]
  s.date = "2013-10-31"
  s.description = "Ohai profiles your system and emits JSON".freeze
  s.email = "adam@opscode.com".freeze
  s.executables = ["ohai".freeze]
  s.files = ["bin/ohai".freeze]
  s.homepage = "http://wiki.opscode.com/display/chef/Ohai".freeze
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Ohai profiles your system and emits JSON".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<systemu>.freeze, ["~> 2.5.2"])
      s.add_runtime_dependency(%q<yajl-ruby>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<mixlib-cli>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<mixlib-config>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<mixlib-log>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<mixlib-shellout>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<ipaddress>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-core>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-expectations>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-mocks>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec_junit_formatter>.freeze, [">= 0"])
    else
      s.add_dependency(%q<systemu>.freeze, ["~> 2.5.2"])
      s.add_dependency(%q<yajl-ruby>.freeze, [">= 0"])
      s.add_dependency(%q<mixlib-cli>.freeze, [">= 0"])
      s.add_dependency(%q<mixlib-config>.freeze, [">= 0"])
      s.add_dependency(%q<mixlib-log>.freeze, [">= 0"])
      s.add_dependency(%q<mixlib-shellout>.freeze, [">= 0"])
      s.add_dependency(%q<ipaddress>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-core>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-expectations>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-mocks>.freeze, [">= 0"])
      s.add_dependency(%q<rspec_junit_formatter>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<systemu>.freeze, ["~> 2.5.2"])
    s.add_dependency(%q<yajl-ruby>.freeze, [">= 0"])
    s.add_dependency(%q<mixlib-cli>.freeze, [">= 0"])
    s.add_dependency(%q<mixlib-config>.freeze, [">= 0"])
    s.add_dependency(%q<mixlib-log>.freeze, [">= 0"])
    s.add_dependency(%q<mixlib-shellout>.freeze, [">= 0"])
    s.add_dependency(%q<ipaddress>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-core>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-expectations>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-mocks>.freeze, [">= 0"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, [">= 0"])
  end
end
