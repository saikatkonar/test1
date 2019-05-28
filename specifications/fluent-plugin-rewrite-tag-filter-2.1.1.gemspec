# -*- encoding: utf-8 -*-
# stub: fluent-plugin-rewrite-tag-filter 2.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "fluent-plugin-rewrite-tag-filter".freeze
  s.version = "2.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kentaro Yoshida".freeze]
  s.date = "2018-11-12"
  s.email = ["y.ken.studio@gmail.com".freeze]
  s.homepage = "https://github.com/fluent/fluent-plugin-rewrite-tag-filter".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Fluentd Output filter plugin. It has designed to rewrite tag like mod_rewrite. Re-emmit a record with rewrited tag when a value matches/unmatches with the regular expression. Also you can change a tag from apache log by domain, status-code(ex. 500 error), user-agent, request-uri, regex-backreference and so on with regular expression.".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<test-unit>.freeze, [">= 3.1.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<fluentd>.freeze, ["< 2", ">= 0.14.2"])
      s.add_runtime_dependency(%q<fluent-config-regexp-type>.freeze, [">= 0"])
    else
      s.add_dependency(%q<test-unit>.freeze, [">= 3.1.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<fluentd>.freeze, ["< 2", ">= 0.14.2"])
      s.add_dependency(%q<fluent-config-regexp-type>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<test-unit>.freeze, [">= 3.1.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<fluentd>.freeze, ["< 2", ">= 0.14.2"])
    s.add_dependency(%q<fluent-config-regexp-type>.freeze, [">= 0"])
  end
end
