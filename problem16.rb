# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2^1000?

def sum_of_digits(power)
	value = 2**power
	array = ((value.to_s).split'').map { |i| i.to_i }
	return array.reduce(:+)
end

sum_of_digits 1000