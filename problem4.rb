# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome(num_of_digits)
	max_number_string = ""
	num_of_digits.times { max_number_string += "9"}
	max_product = max_number_string.to_i ** 2		# e.g: 999* 999 = 998001
	
	sub_string = (max_product.to_s)[0..(max_product.to_s).length/2 - 1]
	sub_string_number = sub_string.to_i 
	
	delta = 1
	delta.upto(sub_string_number) { |x|
		palindrome = ((sub_string_number - x).to_s + (sub_string_number - x).to_s.reverse).to_i
		
		factor = sub_string_number
		factor.downto(10**(num_of_digits - 1)) { |div|
			return div, (palindrome/div) if (palindrome % div == 0) and (palindrome/div).to_s.length == num_of_digits
		}
	}
end

largest_palindrome 3