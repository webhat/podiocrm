module PodioCrm
	class InstallGenerator < Rails::Generators::Base
		source_root File.expand_path('../templates', __FILE__)
		def create_initializer_file
			initializer 'podio_crm.rb', initializer_file
		end

		def initializer_file
<<RUBY
require 'podio_crm'
PodioCrm.setup(username: ENV['PODIO_USERNAME'], password: ENV['PODIO_PASSWORD'], api_key: ENV['PODIO_CID'], api_secret: ENV['PODIO_SECRET'])
RUBY
		end
	end
end
