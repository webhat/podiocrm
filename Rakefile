# encoding: utf-8
#

import './lib/tasks/install.rake'

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
require './lib/podiocrm/version.rb'
Jeweler::Tasks.new do |gem|
  gem.name = "podiocrm"
  gem.homepage = "http://github.com/webhat/podiocrm"
  gem.license = "LGPLv2"
  gem.summary = "Sync to a CRM in Podio"
  gem.description = "This module allows linking to a Podio CRM"
  gem.authors = ["Daniel W. Crompton"]
	gem.email = ['podo+crm@specialbrands.net', '']
  gem.version = PodioCRM::Version::STRING
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['spec'].execute
end

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = PodioCRM::Version::STRING

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "Podio CRM #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
