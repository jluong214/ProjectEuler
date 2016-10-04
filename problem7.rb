# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

def is_prime?(number)
	return true if number <= 1
	div = 2
	(div...number).each do |i|
		return false if number % i == 0
	end
	return true
end

def nth_prime(n)
	nth_term = 0
	
	number = 1
	while nth_term != n
		number += 1
		nth_term += 1 if is_prime? number
	end
	return number
end

nth_prime(10001)