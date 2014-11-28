require 'spec_helper'
require 'pry-byebug'

describe PodioCrm::ModelGenerator, type: :generator do
	destination File.expand_path('.')
	after(:all) do
		File.unlink 'app/models/podio_teacher.rb'
		Dir.rmdir 'app/models'
		Dir.rmdir 'app'
	end
	it 'creates an object model' do
		allow_any_instance_of(PodioCrm::ModelGenerator).to receive(:get_fields)
		expect_any_instance_of(PodioCrm::ModelGenerator).to receive(:fields).and_return([{field_id: 99999, label: 'name'},{field_id: 88888, label: 'email'}])
		expect_any_instance_of(PodioCrm::ModelGenerator).to receive(:belongs).and_return('teacher')

		dc = described_class.new [ 'podio_teacher', '99999', '123456:string', 'teacher:belongs_to' ]
		dc.generate_object_model

		assert_file 'app/models/podio_teacher.rb', /email/
		assert_file 'app/models/podio_teacher.rb', /99999/
		assert_file 'app/models/podio_teacher.rb', /name/
		assert_file 'app/models/podio_teacher.rb', /88888/
	end
end
