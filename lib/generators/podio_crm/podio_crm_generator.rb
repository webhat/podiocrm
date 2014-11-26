require 'rails/generators/active_record'

module PodioCrm
	class PodioCrmGenerator < ActiveRecord::Generators::Base
		source_root File.expand_path('../templates', __FILE__)

		argument :crm_name, type: :array, default: [], desc: "XXX", banner: "blah:blah:blah"
		def create_crm_link
			puts "hi #{class_name}"
		end

		def create_crm_migration
			puts "ho #{crm_name}"
		end

		def migration_name
			"add_podio_crm_#{crm_names.join("_")}_to_#{name.underscore.pluralize}"
		end

		def class_name
			name.camelize
		end
	end
end
