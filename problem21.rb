# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

def sum_of_divisors(num)
	return 1 if num == 1
	
	array = []
	(1...num).each do |div|
		array.push div if num % div == 0
	end
	return array.reduce(:+)
end

def amicable_num(num)
	sum_div = []
	(1..num).each do |i|
		a = sum_of_divisors(i)
		b = sum_of_divisors(a)
		sum_div.push [a,b] if b == i and a != b
	end
	return sum_div.sort
end

amicable_num(10000)