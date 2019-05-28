# -*- encoding: utf-8 -*-
# stub: fluent-plugin-slack 0.6.7 ruby lib

Gem::Specification.new do |s|
  s.name = "fluent-plugin-slack".freeze
  s.version = "0.6.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Keisuke SOGAWA".freeze, "Naotoshi Seo".freeze]
  s.date = "2017-05-22"
  s.description = "fluent Slack plugin".freeze
  s.email = ["keisuke.sogawa@gmail.com".freeze, "sonots@gmail.com".freeze]
  s.homepage = "https://github.com/sowawa/fluent-plugin-slack".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "fluent Slack plugin".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fluentd>.freeze, [">= 0.10.8"])
      s.add_development_dependency(%q<rake>.freeze, [">= 10.1.1"])
      s.add_development_dependency(%q<rr>.freeze, [">= 1.0.0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-nav>.freeze, [">= 0"])
      s.add_development_dependency(%q<test-unit>.freeze, ["~> 3.0.2"])
      s.add_development_dependency(%q<test-unit-rr>.freeze, ["~> 1.0.3"])
      s.add_development_dependency(%q<dotenv>.freeze, [">= 0"])
    else
      s.add_dependency(%q<fluentd>.freeze, [">= 0.10.8"])
      s.add_dependency(%q<rake>.freeze, [">= 10.1.1"])
      s.add_dependency(%q<rr>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<pry-nav>.freeze, [">= 0"])
      s.add_dependency(%q<test-unit>.freeze, ["~> 3.0.2"])
      s.add_dependency(%q<test-unit-rr>.freeze, ["~> 1.0.3"])
      s.add_dependency(%q<dotenv>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<fluentd>.freeze, [">= 0.10.8"])
    s.add_dependency(%q<rake>.freeze, [">= 10.1.1"])
    s.add_dependency(%q<rr>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<pry-nav>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, ["~> 3.0.2"])
    s.add_dependency(%q<test-unit-rr>.freeze, ["~> 1.0.3"])
    s.add_dependency(%q<dotenv>.freeze, [">= 0"])
  end
end
