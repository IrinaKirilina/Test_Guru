#  при вызове TestGuru.current_version возвращаетсяся код текущей версии приложения.

class TestGuru
	class << self
		def current_version 
			"0.1.0"
		end
	end
end
