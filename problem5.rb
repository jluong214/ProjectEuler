# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallest_number()
	prime_numbers = [19,17,13,11,7,5,3,2] # primes numbers from 0-20.
	product_prime = prime_numbers.reduce(:*)
	number = product_prime
	while (1)
		return number if divisible_1to20?(number)
		number += product_prime
	end
end

def divisible_1to20?(num)
	idx = 20
	while idx > 10 # numbers from 0-10 are a multiple of a number from 11-20
		return false if num % idx != 0
		idx -= 1
	end
	return true
end

smallest_number