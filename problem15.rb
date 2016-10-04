# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.


# How many such routes are there through a 20×20 grid?

def num_of_routes(size)
	array = Array.new
	
	first_row = [1] * (size + 1)
	array[0] = first_row
	
	# Number of possible routes is based on the sum its adjacent cells (left and above). ie. [2][2] = 3 + 3, [0][3] = 1
	(1..size).each do |row|
		next_row = []
		(1..size).each do |col|
			next_row.push 1 if col == 1
			next_row.push (next_row[col-1] + array[row-1][col])
		end
		array[row] = next_row
	end
	
	return array[size][size]
end

num_of_routes(20)