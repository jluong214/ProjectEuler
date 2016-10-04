=begin
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
=end

def find_chain_size(num, lookup)
	
	if lookup.has_key?(num)
		return lookup[num]
	end
	
	array = []
	array.push num
	while num > 1
		if lookup.has_key?(num) # cache to avoid repeated sequences
			return lookup[num] + array.size
		end
		if(num % 2 == 0)
			num = num / 2
		else
			num = 3*num + 1
		end
		array.push num
	end
	array.size
end

def longest_chain(limit)
	max_size = 0
	start_number = 0
	
	lookup_table = Hash.new {0}
	1.step(limit) do |num|
		size = find_chain_size(num, lookup_table)
		lookup_table[num] = size
		if max_size < size
			max_size = size 
			start_number = num
		end
	end
	return start_number
end

longest_chain(1000000)