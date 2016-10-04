#You are given the following information, but you may prefer to do some research for yourself.

#1 Jan 1900 was a Monday.
#Thirty days has September,
#April, June and November.
#All the rest have thirty-one,
#Saving February alone,
#Which has twenty-eight, rain or shine.
#And on leap years, twenty-nine.
#A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
#How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

def total_sundays
	thirty_days = [4,6,9,11]
	thirtyone_days = [1,3,5,7,8,10,12]
	
	total_sunday = 0
	day_of_first = 2 # 0-6 = sunday - saturday (1 = monday)
	(1901..2000).each do |year|
		(1..12).each do |month|
			if thirty_days.include? month
				day_of_first = ((day_of_first + 30) % 7)
				total_sunday += 1 if day_of_first == 0
			elsif thirtyone_days.include? month
				day_of_first = ((day_of_first + 31) % 7)
				total_sunday += 1 if day_of_first == 0
			elsif year % 4 == 0 and year % 400 == 0
				day_of_first = ((day_of_first + 29) % 7)
				total_sunday += 1 if day_of_first == 0
			else
				day_of_first = ((day_of_first + 28) % 7)
				total_sunday += 1 if day_of_first == 0
			end
		end
	end
	return total_sunday
end

total_sundays

