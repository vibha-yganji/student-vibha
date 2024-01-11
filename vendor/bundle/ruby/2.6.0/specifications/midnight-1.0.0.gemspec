# -*- encoding: utf-8 -*-
# stub: midnight 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "midnight".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["bluefuton".freeze]
  s.date = "2019-12-03"
  s.description = "".freeze
  s.email = ["chris@bluefuton.com".freeze]
  s.homepage = "https://github.com/bluefuton/midnight".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.3".freeze
  s.summary = "Parse natural language date/time into a cron expression".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.0.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 0"])
    s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<chronic>.freeze, ["= 0.10.2"])
    s.add_runtime_dependency(%q<numerizer>.freeze, ["~> 0.1.1"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_dependency(%q<chronic>.freeze, ["= 0.10.2"])
    s.add_dependency(%q<numerizer>.freeze, ["~> 0.1.1"])
  end
end
