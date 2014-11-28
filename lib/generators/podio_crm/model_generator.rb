module PodioCrm
	class ModelGenerator < Rails::Generators::NamedBase
		source_root File.expand_path('../templates', __FILE__)

		argument :attributes, required: true, type: :array, desc:'', banner:''

		def set_app_id
			@app_id ||= attributes.shift
		end

		def set_belongs_to
			@belongs ||= attributes.shift
		end

		def get_fields
			@fields = []
			authenticate_podio
			items = Podio::Item.find_all(app_id, limit: 1, offset: 1)
			items.all.each do |item|
				item.attributes[:fields].each do |field|
					@fields << {
						type: field['type'],
						field_id: field['field_id'],
						label: field['label'],
						values: field['values'],
					}
				end
			end
		end

		def generate_database_models
			generate 'podio_crm:podio_crm', "#{name} #{app_id} #{concat_field_ids} #{belongs}:belongs_to"
		end

		def generate_object_model
			template 'podio_crm_model.rb.erb', "app/models/#{name}.rb" 
		end

		def belongs
			@belongs.name.parameterize.underscore.singularize
		end

		def app_id
			@app_id.name
		end

		private

		def concat_field_ids
			@fields.map	{|f| f[:field_id] }.join(' ')
		end

		def authenticate_podio
			error 'Podio not installed, try running `rails g podio_crm:install` first' if Podio.client.nil?
			Podio.client.authenticate_with_credentials(ENV['PODIO_USERNAME'], get_podio_password)
		end

		def get_podio_password
			if ENV['PODIO_PASSWORD']
				ENV['PODIO_PASSWORD']
			else
				puts 'Type your password and hit enter:'
				STDIN.noecho(&:gets).strip
			end
		end

		def class_name
			name.camelize
		end

		def rails_4?
			Rails::VERSION::MAJOR == 4
		end

		def error message
			$stderr.puts "Error: #{ message }"
			exit(-1)
		end
	end
end
