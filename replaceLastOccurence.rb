class ReplaceLastOcc

	attr_accessor :str, :chars
	
	def initialize(str, chars)
		@str = str
		@chars = chars
	end

	def replaceLast
		puts "Empty string" if @str.empty?

		*a, b = @str.split(chars.to_s, -1)
		
		puts *a
		puts b
	end

end


#Execution
rl = ReplaceLastOcc.new("abc123abc123abc123", "abc")
rl.replaceLast