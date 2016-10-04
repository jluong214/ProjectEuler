# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
# Add 'and' after 100's

def num_to_word(num)
	
	ones_table = {	1 => "one",
				2 => "two",
				3 => "three",
	 			4 => "four",
				5 => "five",
				6 => "six",
				7 => "seven",
				8 => "eight",
				9 => "nine" }
				
	teens_table = { 11 => "eleven",
				12 => "twelve",
				13 => "thirteen",
				14 => "fourteen",
				15 => "fifteen",
				16 => "sixteen",
				17 => "seventeen",
				18 => "eighteen",
				19 => "nineteen" }
				
	tens_table = {	1 => "ten",
				2 => "twenty",
				3 => "thirty",
				4 => "forty",
				5 => "fifty",
				6 => "sixty",
				7 => "seventy",
				8 => "eighty",
				9 => "ninety" } 
			
	return "onethousand" if num == 1000
	
	result = ""
	if num >= 100
		result = ones_table[num/100] + "hundred"
		result += "and" if num % 100 != 0
		num = num % 100
	end
	
	if num >= 10
		return result += teens_table[num] if num > 10 and num < 20
		result += tens_table[num/10].to_s
		num = num % 10
	end
	
	if num < 10
		result += ones_table[num].to_s
	end
	return result
end

def num_of_letters(first_term,last_term)
	array = []
	(first_term..last_term).each do |x|
		array.push (num_to_word(x))
	end
	return (array.join'').length	
end

num_of_letters(1,1000)