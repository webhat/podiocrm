require 'rails/generators/active_record'

module PodioCrm
	class PodioCrmGenerator < ActiveRecord::Generators::Base
		source_root File.expand_path('../templates', __FILE__)

		argument :attributes, required: true, type: :array, desc: "", banner: "NAME PODIO_APP_ID field_id[:type] field_id[:type] model:belongs_to"

		def set_app_id
			@app_id ||= attributes.shift
		end

		def generate_migration
			migration_template "podio_crm_migration.rb.erb", "db/migrate/#{migration_file_name}"
		end

		def app_id
			@app_id
		end

		def migration_name
			"add_podio_crm_#{app_id.human_name}_to_#{name.underscore.pluralize}"
		end

		def migration_file_name
			"#{migration_name}.rb"
		end

		def migration_class_name
			migration_name.camelize
		end
	end
end
