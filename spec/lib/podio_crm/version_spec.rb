require 'spec_helper'

describe PodioCrm::Version do
	it 'version not empty' do
		expect(described_class::STRING).to_not eq '..'
	end
	it 'version not nil' do
		expect(described_class::STRING).to_not be_nil
	end
end
