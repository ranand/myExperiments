# Author  : Anand Ramakrishnan
# Date    : 07/03/2014
# Problem : multiplication of 10 primes. (scalable to n primes)

class FCMultiply

	# Make sure num variable is readable and writable.
	attr_accessor :num
	attr_accessor :prime_numbers	

	# Initialize method.
	# num : number of primes needed.
	def initialize(num)
		# Instance variable.
		@num = num
	end

	# Method to add prime numbers to an array.
	def primes	
		@prime_numbers = []	
		i = 2
		until prime_numbers.size > num-1
			# adding elements to array : time complexity - O(1)
			prime_numbers << i if (is_prime?(i) == 1)
			i += 1
		end
		puts "\n\nPrime numbers for the chosen limit are: " + @prime_numbers.to_s
	end

	# Method to check if a give number is prime or not.
	def is_prime?(number)
		# If number is divisible by 2, then it is not a prime.
		# By default, 2 is a prime number.
		if (number == 2 || number % 2 != 0)
			return 1
		else
			return 0
		end
	end

	# Method to multiply two numbers.
	def mul_prime (num1, num2)
		return num1 * num2
	end

	# Method to print the result to the console.
	def print_result
		# call the primes method to get the prime_numbers array.
		primes

		# Begin - print the column header.
		puts "\n\n"
		print '     '
		i = (0...num)
		j = (0...num)
		i.each {|x| print "%-3d  " % prime_numbers[x]}
		print "\n     "
		i.each {|x| print '---- '}
		print "\n"
		# End - print the column header.

		# Begin - print row header and row elements (product)
		# time complexity : O(n^2)
		j.each do |y| 
		    print "%-3d| " % prime_numbers[y]
		    i.each {|x| print "%-3d  " % mul_prime(prime_numbers[x], prime_numbers[y])}
		    print "\n"
		end
		# End - print row heaer and row elements (product)
		puts "\n\n"
	end

end




# Execution
puts "\n\n"
puts "-------------------------------"
puts " PRIME NUMBER MULTIPLICATION "
puts "-------------------------------"
print "Enter the number of primes you would like to multiply : "
user_input = gets.chomp
fcm = FCMultiply.new(user_input.to_i)
fcm.print_result


