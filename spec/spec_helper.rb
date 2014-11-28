require 'coveralls'
Coveralls.wear!

require 'bundler/setup'
Bundler.setup

require 'rails/all'
require 'rspec/rails'
require 'rails/generators'

require 'podio'
require 'podio_crm'
require 'generators/podio_crm'

RSpec.configure do |config|
  # some (optional) config here
end

# @TODO: find a better solution than this hackedy hack
ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")
