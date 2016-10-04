# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

# 1634 = 14 + 64 + 34 + 44
# 8208 = 84 + 24 + 04 + 84
# 9474 = 94 + 44 + 74 + 44
# As 1 = 14 is not a sum it is not included.

# The sum of these numbers is 1634 + 8208 + 9474 = 19316.

# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

def sum_of_fifth
	result = []
	(2..(5*(9**5))).each do |num| # upper bound is (9^5 + 9^5 + 9^5 + 9^5 + 9^5)
		arry = ((num.to_s).split'').map { |i| i.to_i }
		arry.each_with_index do |dig, idx|
			arry[idx] = dig ** 5
		end
		result.push num if arry.reduce(:+) == num
	end
	return result.reduce(:+)
end

sum_of_fifth