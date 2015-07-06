class Anagram

	attr_accessor :str_a, :str_b

	def initialize(str_a, str_b)
		@str_a = str_a
		@str_b = str_b
	end

	def reverse_string (input_string)
		input_string.reverse!
	end

	def anagram?
		@str_a = @str_a.strip
		@str_b = @str_b.strip
		
		puts "Not an anagram" if (@str_a.length != @str_b.length)

		@str_a = reverse_string(@str_a)

		if @str_a.eql?(@str_b) 
			puts "anagram"
		else
			puts "not an anagram"
		end
	end

end


# Execution
ana = Anagram.new("god", "dog")
ana.anagram?