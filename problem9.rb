# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def find_triplet(sum)
	i = 1
	max = sum
	i.step(max/3) do |a|
		j = a
		j.step(max/2) do |b|
			c = max - a - b
			return a, b, c if (c**2 == (b**2 + a**2))
		end
	end
	return "No natural triplet exists"
end

find_triplet(1000)