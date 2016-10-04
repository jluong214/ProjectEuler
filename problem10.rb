# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

def sum_primes(num)
	
	# Use Sieve of Eratosthenes Alg. to find all primes numbers from 0 to num
	array = Array.new [true] * num
	2.step(Math.sqrt(num)) do |i|
		if array[i] == true
			j = i * i
			j.step(num,i) do |idx|
				array[idx] = false
			end
		end
	end
	
	primes = []
	(2..array.size).each do |idx|
		primes.push idx if array[idx] == true
		idx += 1
	end
	return primes.reduce(:+)
end

sum_primes(2000000)