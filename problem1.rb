# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

def sum_3_5(number) 
	sum3 = 0
	sum5 = 0
	sum15 = 0
	0.step(number-1,3) do |num|
		sum3 += num
	end
	0.step(number-1,5) do |num|
		sum5 += num
	end
	0.step(number-1,15) do |num|
		sum15 += (num)
	end
	return sum3 + sum5 - sum15
end

sum_3_5(1000)