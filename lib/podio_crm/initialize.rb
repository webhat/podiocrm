module PodioCrm
	class Initialize
		def initialize options={}
			@@options = options
		end

		def self.options
			@@options
		end
	end
end
