require 'spec_helper'

describe PodioCrm::Initialize do
	it 'initialization' do
		expected = { username:'test', password:'test1234' }
		described_class.new( expected )
		actual = described_class.options
		expect(actual).to eq expected
	end
	it 'sets :username' do
		expected = { username:'test', password:'test1234' }
		described_class.new( expected )
		actual = described_class.options
		expect(actual[:username]).to eq expected[:username]
	end
	it 'sets :password' do
		expected = { password:'test', password:'test1234' }
		described_class.new( expected )
		actual = described_class.options
		expect(actual[:password]).to eq expected[:password]
	end
	it 'sets :api_key' do
		expected = { api_key:'test', password:'test1234' }
		described_class.new( expected )
		actual = described_class.options
		expect(actual[:api_key]).to eq expected[:api_key]
	end
	it 'sets :api_secret' do
		expected = { api_secret:'test', password:'test1234' }
		described_class.new( expected )
		actual = described_class.options
		expect(actual[:api_secret]).to eq expected[:api_secret]
	end
end
