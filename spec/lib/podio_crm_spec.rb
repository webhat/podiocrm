require 'spec_helper'

describe PodioCrm do
	it 'should init' do
		expect(described_class.setup).to_not be_nil
	end
	it 'setup podio' do
		expect(described_class.setup_podio).to_not be_nil
	end
	it 'setup podio auth' do
		response = double(Faraday::Response)
		allow(response).to receive_messages(
			:status => 200,
			:headers => {},
			:body => {"access_token" => "a3345189a07b478284356c8b0b3c54d5", "expires_in" => 28799, "refresh_token" => "cdca6acfeb374598ba2790c9e5283b21"})

		expect_any_instance_of(Faraday::Connection).to receive(:post).and_return(response)
		described_class.setup api_key: 'sandbox@podio.com', api_secret: 'sandbox_secret', username: 'new@noname.com', password: 'n00b'
		expect(described_class.authenticate_with_credentials).to_not be_nil
	end
end
