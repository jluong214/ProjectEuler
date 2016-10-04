# Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:

# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13

# It can be verified that the sum of the numbers on the diagonals is 101.

# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

def sum_of_diagonals
	result = []
	result.push 1
	width = 3
	while width <= 1001
		result.push width**2, width**2 - (width-1), width**2 - (width-1)*2, width**2 - (width-1)*3
		width += 2
	end
	return result.reduce(:+)
end
sum_of_diagonals