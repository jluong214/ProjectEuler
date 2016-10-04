#A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:

# 1/2	= 	0.5
#1/3	= 	0.(3)
# 1/4	= 	0.25
# 1/5	= 	0.2
# 1/6	= 	0.1(6)
# 1/7	= 	0.(142857)
# 1/8	= 	0.125
# 1/9	= 	0.(1)
# 1/10	= 	0.1
# Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.

# Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

def fraction
	repeats = []
	(2..1000).each do |num|
		if !(primes_factors(num).include? 2 or primes_factors(num).include? 5)
			repeats.push num
		end
	end
	
	maxlength = 0
	repeats.each do |num|
		rep_remainders = (Array.new (num)).map {0}
		remainder = 1
		length_count = 0
		# loop doing long division until repeat is hit
		while rep_remainders[remainder] == 0 && remainder != 0
            rep_remainders[remainder] = length_count
            remainder = (remainder * 10) % num
            length_count += 1
        end
       
        maxlength = length_count - rep_remainders[remainder] if (length_count - rep_remainders[remainder] > maxlength)
	end
	return maxlength
end

def primes_factors(num)
	largest_div = 2;			
	factors = []
	while num > 1
		div = 2;
		while num % div != 0
				div += 1
		end
		num = num / div
		factors.push div
	end
	return factors
end

fraction
