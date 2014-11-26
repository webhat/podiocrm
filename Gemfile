source 'https://rubygems.org'
gemspec

if RUBY_VERSION =~ /1.9/
	  Encoding.default_external = Encoding::UTF_8
		Encoding.default_internal = Encoding::UTF_8
end

rails_version = ENV["RAILS_VERSION"] || "default"

rails = case rails_version
when "master"
	{github: "rails/rails"}
when "default"
	">= 3.1.0"
else
	"~> #{rails_version}"
end

gem 'podio', git: 'https://github.com/webhat/podio-rb.git'

group :development do
	gem 'shoulda', '>= 3.5.0'
  gem 'rdoc', '~> 3.12'
  gem 'bundler', '~> 1.0'
  gem 'jeweler', '~> 2.0.1'
	gem 'simplecov', '>= 0.9.1'
end

group :development, :test do
	gem 'guard-rspec', '>= 4.3.1'
	gem 'guard-yard', '>= 2.1.4'
	gem 'rails', rails
	gem 'sqlite3', '>= 1.3.10'
	gem 'rspec', '>= 3.1.0'
	gem 'rspec-rails', '>= 3.1.0'
end
