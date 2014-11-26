module PodioCrm
	class InstallGenerator < Rails::Generators::Base
		source_root File.expand_path('../templates', __FILE__)
		def create_initializer_file
			create_file "config/initializers/podio_crm.rb", "# Add initialization content here"
		end
	end
end
