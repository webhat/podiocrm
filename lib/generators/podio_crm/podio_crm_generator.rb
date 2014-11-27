require 'rails/generators/active_record'

module PodioCrm
	class PodioCrmGenerator < ActiveRecord::Generators::Base
		source_root File.expand_path('../templates', __FILE__)

		argument :crm_names, required: true, type: :array, desc: "XXX", banner: "blah:blah:blah"

		def generate_migration
			migration_template "podio_crm_migration.rb.erb", "db/migrate/#{migration_file_name}"
		end

		def migration_name
			"add_podio_crm_#{crm_names.join("_")}_to_#{name.underscore.pluralize}"
		end

		def migration_file_name
			"#{migration_name}.rb"
		end

		def migration_class_name
			name.camelize
		end
	end
end
