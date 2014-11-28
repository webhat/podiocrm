require 'generator_spec'
require 'spec_helper'

describe PodioCrm::InstallGenerator, type: :generator do
	destination File.expand_path('../../tmp', __FILE__)
	arguments %w(something)

	before(:all) do
		prepare_destination
		run_generator
	end

	it 'creates a test initializer' do
		assert_file 'config/initializers/podio_crm.rb', /PodioCrm.setup/
	end
end
