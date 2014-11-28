# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: podiocrm 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "podiocrm"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Daniel W. Crompton"]
  s.date = "2014-11-28"
  s.description = "This module allows linking to a Podio CRM"
  s.email = ["podo+crm@specialbrands.net", ""]
  s.files = [
    "podiocrm.gemspec"
  ]
  s.homepage = "http://github.com/webhat/podiocrm"
  s.licenses = ["LGPLv2"]
  s.rubygems_version = "2.2.2"
  s.summary = "Sync to a CRM in Podio"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<podio>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 3.5.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0.9.1"])
      s.add_development_dependency(%q<guard-rspec>, [">= 4.3.1"])
      s.add_development_dependency(%q<guard-yard>, [">= 2.1.4"])
      s.add_development_dependency(%q<rails>, [">= 3.1.0"])
      s.add_development_dependency(%q<sqlite3>, [">= 1.3.10"])
      s.add_development_dependency(%q<rspec>, [">= 3.1.0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 3.1.0"])
      s.add_development_dependency(%q<rspec-mocks>, [">= 0"])
    else
      s.add_dependency(%q<podio>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 3.5.0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0.9.1"])
      s.add_dependency(%q<guard-rspec>, [">= 4.3.1"])
      s.add_dependency(%q<guard-yard>, [">= 2.1.4"])
      s.add_dependency(%q<rails>, [">= 3.1.0"])
      s.add_dependency(%q<sqlite3>, [">= 1.3.10"])
      s.add_dependency(%q<rspec>, [">= 3.1.0"])
      s.add_dependency(%q<rspec-rails>, [">= 3.1.0"])
      s.add_dependency(%q<rspec-mocks>, [">= 0"])
    end
  else
    s.add_dependency(%q<podio>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 3.5.0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0.9.1"])
    s.add_dependency(%q<guard-rspec>, [">= 4.3.1"])
    s.add_dependency(%q<guard-yard>, [">= 2.1.4"])
    s.add_dependency(%q<rails>, [">= 3.1.0"])
    s.add_dependency(%q<sqlite3>, [">= 1.3.10"])
    s.add_dependency(%q<rspec>, [">= 3.1.0"])
    s.add_dependency(%q<rspec-rails>, [">= 3.1.0"])
    s.add_dependency(%q<rspec-mocks>, [">= 0"])
  end
end

