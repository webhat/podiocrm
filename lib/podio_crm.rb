require 'podio'
require 'podio_crm/railtie' if defined?(Rails)

module PodioCrm
	def self.setup options={}
		PodioCrm::Initialize.new options
	end

	autoload :Version,	'podio_crm/version'
	autoload :Initialize, 'podio_crm/initialize'
end
