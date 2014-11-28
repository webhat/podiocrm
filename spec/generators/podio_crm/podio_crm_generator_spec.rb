require 'spec_helper'
require 'generator_spec'

describe PodioCrm::PodioCrmGenerator, type: :generator do
	destination File.expand_path('../../tmp', __FILE__)
	arguments %w(podio_teacher 99999 123456:string teacher:belongs_to)

	before(:all) do
		prepare_destination
		run_generator
	end

	it 'creates a migration' do
		assert_migration 'db/migrate/add_podio_crm_99999_to_podio_teachers.rb', /123456/
	end
end
