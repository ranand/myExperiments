# Author  : Anand Ramakrishnan
# Date    : 07/03/2014
# Problem : multiplication of 10 primes. (scalable to n primes)
# File 	  : BDD - Test file


require "./myFundingCircleQuestion.rb"
require "test/unit"

class FCTest < Test::Unit::TestCase

	def test_is_prime		
		test_fc = FCMultiply.new(2)
		assert_equal(1, test_fc.is_prime?(23), "true")
		assert_equal(0, test_fc.is_prime?(10), "false")
	end

	def test_mul_prime
		test_fc = FCMultiply.new(2)
		assert_equal(6, test_fc.mul_prime(2,3), "Correct mul_prime value")
		assert_not_equal(12, test_fc.mul_prime(3,3), "Wrong mul_prime value")
	end
end
