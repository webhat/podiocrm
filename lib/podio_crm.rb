require 'podio'
require 'podio_crm/railtie' if defined?(Rails)

module PodioCrm
	class << self
		def setup options={}
			PodioCrm::Initialize.new options
			setup_podio
		end

		def setup_podio
			Podio.setup(:api_key => PodioCrm::Initialize.options[:api_key], :api_secret => PodioCrm::Initialize.options[:api_secret])
		end

		def authenticate_with_credentials
			Podio.client.authenticate_with_credentials(PodioCrm::Initialize.options[:username], PodioCrm::Initialize.options[:password])
		end
	end

	autoload :Version,	'podio_crm/version'
	autoload :Initialize, 'podio_crm/initialize'
end
