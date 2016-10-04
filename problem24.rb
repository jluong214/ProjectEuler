#A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

#	012   021   102   120   201   210

#	What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

def lex_permutation(num)
	result = []
	array = (num.to_s.split "").map { |i| i.to_i }.sort
	result.push (array.join) # first perm
	
	#lexicographic alg.
	while result.size < 1000000
		i = find_i array
		j = find_j array, array[i-1]

		#swap j and i-1
		hold = array[i-1]
		array[i-1] = array[j]
		array[j] = hold
		
		array[i..array.size-1] = array[i..array.size-1].reverse
		result.push (array.join)
	end
	return result[999999]
end

def find_i (ary)
	idx = ary.size - 1
	while idx >= 1
		return idx if ary[idx] > ary[idx-1]
		idx -= 1
	end
	return nil
end

def find_j (ary, pivot)
	idx = ary.size - 1
	while idx >= 1
		return idx if ary[idx] >= pivot
		idx -= 1
	end
	return nil
end

lex_permutation "0123456789"