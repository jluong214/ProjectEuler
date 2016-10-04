# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?
def print_primes(num)
	largest_div = 2;			
	while num > 1
		div = 2;
		while num % div != 0
				div += 1
		end
		num = num / div
		largest_div = div
	end
	return largest_div
end

print_primes(600851475143)