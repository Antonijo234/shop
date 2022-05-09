# -*- encoding: utf-8 -*-
# stub: bootstrap-sass-extras 0.0.7 ruby lib

Gem::Specification.new do |s|
  s.name = "bootstrap-sass-extras".freeze
  s.version = "0.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["doabit".freeze]
  s.date = "2016-03-15"
  s.description = "bootstrap-sass extras.".freeze
  s.email = ["doinsist@gmail.com".freeze]
  s.homepage = "https://github.com/doabit/bootstrap-sass-extras".freeze
  s.rubygems_version = "3.1.4".freeze
  s.summary = "bootstrap-sass extras.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 3.1.0"])
    s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.1.0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
  end
end
