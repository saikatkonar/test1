# -*- encoding: utf-8 -*-
# stub: td-logger 0.3.27 ruby lib

Gem::Specification.new do |s|
  s.name = "td-logger".freeze
  s.version = "0.3.27"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sadayuki Furuhashi".freeze]
  s.date = "2017-04-26"
  s.description = "Treasure Data logging library".freeze
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Treasure Data logging library".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<msgpack>.freeze, ["< 2.0", ">= 0.5.6"])
      s.add_runtime_dependency(%q<td-client>.freeze, ["< 2.0", ">= 0.8.66"])
      s.add_runtime_dependency(%q<fluent-logger>.freeze, ["< 2.0", ">= 0.5.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0.9.2"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_development_dependency(%q<rack>.freeze, [">= 0"])
    else
      s.add_dependency(%q<msgpack>.freeze, ["< 2.0", ">= 0.5.6"])
      s.add_dependency(%q<td-client>.freeze, ["< 2.0", ">= 0.8.66"])
      s.add_dependency(%q<fluent-logger>.freeze, ["< 2.0", ">= 0.5.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0.9.2"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<rack>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<msgpack>.freeze, ["< 2.0", ">= 0.5.6"])
    s.add_dependency(%q<td-client>.freeze, ["< 2.0", ">= 0.8.66"])
    s.add_dependency(%q<fluent-logger>.freeze, ["< 2.0", ">= 0.5.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0.9.2"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<rack>.freeze, [">= 0"])
  end
end
