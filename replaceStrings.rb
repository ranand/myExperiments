class ReplaceString

	attr_accessor :str
	
	def initialize(str)
		@str = str
	end

	def replaceStr
		puts "Empty String" if @str.empty?
		
		newStr = @str.gsub(/\s/, "%20")
		puts newStr
	end

end


# Execution
rs = ReplaceString.new(" ")
rs.replaceStr