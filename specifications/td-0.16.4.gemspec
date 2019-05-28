# -*- encoding: utf-8 -*-
# stub: td 0.16.4 ruby lib

Gem::Specification.new do |s|
  s.name = "td".freeze
  s.version = "0.16.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Treasure Data, Inc.".freeze]
  s.date = "2018-12-03"
  s.description = "CLI to manage data on Treasure Data, the Hadoop-based cloud data warehousing".freeze
  s.email = "support@treasure-data.com".freeze
  s.executables = ["td".freeze]
  s.files = ["bin/td".freeze]
  s.homepage = "http://treasure-data.com/".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.1".freeze)
  s.rubygems_version = "2.6.14".freeze
  s.summary = "CLI to manage data on Treasure Data, the Hadoop-based cloud data warehousing".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<msgpack>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<yajl-ruby>.freeze, ["~> 1.1"])
      s.add_runtime_dependency(%q<hirb>.freeze, [">= 0.4.5"])
      s.add_runtime_dependency(%q<parallel>.freeze, ["~> 1.8"])
      s.add_runtime_dependency(%q<td-client>.freeze, ["< 2", ">= 1.0.6"])
      s.add_runtime_dependency(%q<td-logger>.freeze, ["< 2", ">= 0.3.21"])
      s.add_runtime_dependency(%q<rubyzip>.freeze, [">= 1.2.1"])
      s.add_runtime_dependency(%q<zip-zip>.freeze, ["~> 0.3"])
      s.add_runtime_dependency(%q<ruby-progressbar>.freeze, ["~> 1.7"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
    else
      s.add_dependency(%q<msgpack>.freeze, [">= 0"])
      s.add_dependency(%q<yajl-ruby>.freeze, ["~> 1.1"])
      s.add_dependency(%q<hirb>.freeze, [">= 0.4.5"])
      s.add_dependency(%q<parallel>.freeze, ["~> 1.8"])
      s.add_dependency(%q<td-client>.freeze, ["< 2", ">= 1.0.6"])
      s.add_dependency(%q<td-logger>.freeze, ["< 2", ">= 0.3.21"])
      s.add_dependency(%q<rubyzip>.freeze, [">= 1.2.1"])
      s.add_dependency(%q<zip-zip>.freeze, ["~> 0.3"])
      s.add_dependency(%q<ruby-progressbar>.freeze, ["~> 1.7"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<msgpack>.freeze, [">= 0"])
    s.add_dependency(%q<yajl-ruby>.freeze, ["~> 1.1"])
    s.add_dependency(%q<hirb>.freeze, [">= 0.4.5"])
    s.add_dependency(%q<parallel>.freeze, ["~> 1.8"])
    s.add_dependency(%q<td-client>.freeze, ["< 2", ">= 1.0.6"])
    s.add_dependency(%q<td-logger>.freeze, ["< 2", ">= 0.3.21"])
    s.add_dependency(%q<rubyzip>.freeze, [">= 1.2.1"])
    s.add_dependency(%q<zip-zip>.freeze, ["~> 0.3"])
    s.add_dependency(%q<ruby-progressbar>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
  end
end
