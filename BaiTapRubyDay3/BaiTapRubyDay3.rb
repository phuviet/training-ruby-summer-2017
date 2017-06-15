#Ex2
def computes(n)
	if n == 0
		"#{n} = 0"
	elsif n < 0
		"#{n} < 0"
	else
		array =[]
		for i in 0..n
			sum = 0
			for j in 0..i
				sum += j
			end
			array.push(sum)
		end
		array
	end
end
p computes(10)

#Ex3
def get_squares(range)
	array = []
	range.each {|x| array.push(x) if x - (Math.sqrt(x).to_i ** 2) == 0 }
	array
end
p get_squares(1..26)

#bai 4
def centuryFromYear(year)
	return (year / 100) + 1 if year % 100 > 0
	year / 100
end
puts centuryFromYear(1701)

#bai 5 Fibonacci
def fibonacci(n)
	return n if (n == 1 || n == 0)
	fibonacci(n-2) + fibonacci(n-1)
end
puts fibonacci(4)

#bai 6 Check Prime Number
def prime_number?(number)
	check = true
	for i in 2..number-1
		check = false if number % i == 0
	end
	check
end
puts prime_number?(7)

#bai 7 Check Perfect Number
def perfect_number?(number)
	sum = 0
	for i in 1..number-1
		sum += i if number % i == 0
	end
	return true if sum == number
	false
end
p perfect_number?(6)
