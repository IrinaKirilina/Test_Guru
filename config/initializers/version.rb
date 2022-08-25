#  при вызове TestGuru.current_version возвращался код текущей версии приложения.

class TestGuru
	class << self
		def current_version 
			puts "0.1.0"
		end
	end
end