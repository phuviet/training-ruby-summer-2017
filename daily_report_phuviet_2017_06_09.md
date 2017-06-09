## Ruby basic knowledge 

> Ruby basic knowledge include **Basic syntax**, **Control flow** and  **Rules to create name for variables and class**.

#### **Rules to create name for variables and class**:
- **Variables** - follow "snake_case" rule to create name for variables in ruby's language that mean name's variables was created with characters "_" between them.
- **Class** - follow "camelCase" or "CamelCase" rule to create name for class in ruby's language that mean name's class was created  by uppercase the first characters of each word on class's name.
#### **Basic syntax**:
- **puts** - print string text or variables or everything can in one line and this line is block with another print command.

Example for puts syntax:
``` ruby
puts "123"
puts "456"
```
Result of example in console:
```
123
456
```
- **print** - print string text or variables or everything can inline.

Example for print syntax:
``` ruby
print "123"
print "456"
```
Result of example in console:
```
123456
```
- **yield** - can allow replace block code from outsite function which be transmission in function like arguments.

Example for yield syntax:
``` ruby
def test_yield
	print "1-2-3"
	yield
	puts "10-11-12"
end
test_yield {print "4-5-6";puts "7-8-9"}
```
Result of example in console:
```
1-2-34-5-6
7-8-9
10-11-12
```
- **return** - return value for function, if you not use return in function then this function will default return the value in last line of function as the return value of function.

Example for return syntax:
``` ruby
def test_return
	return "1-2-3" or "1-2-3"
end
puts test_return
```
Result of example in console:
```
#the same result for 2 ways
1-2-3
```
- **BEGIN{block_code_1}END{block_code_2}** - when run the code, program will find and execute the code in block_code_1 first then execute others code and finally program will execute the code in block_code_2 last.
Example for BEGIN_END syntax:
``` ruby
puts "4-5-6"
puts "7-8-9"
BEGIN
{
	puts "1-2-3"
}
END
{
	puts "10-11-12"
}

```
Result of example in console:
```
1-2-3
4-5-6
7-8-9
10-11-12
```

####**Control flow**
- **if(condition){block code}end** - if condition is true then execute the code in block code else do nothing.

Example for if syntax:
``` ruby
def test_if(i)
	if i > 5
		puts ">5"
	end
end
puts test_if(5)
puts test_if(6)
```
Result of example in console:
```
#with command "puts test_if(5)"
<nothing to do>
#with command "puts test_if(6)"
>5
```
- **if(condition){block_code_1}else{block_code_1}end** - if condition is true then execute the code in block_code_1 else execute the code in block_code_2.

Example for if_else syntax:
``` ruby
def test_if_else(i)
	if i > 5
		puts ">5"
	else
		puts "<5 or =5"
	end
end
puts test_if_else(5)
puts test_if_else(6)
```
Result of example in console:
```
#with command "puts test_if_else(5)"
<5 or =5
#with command "puts test_if_else(6)"
>5
```

- **if(condition1){block_code_1}elsif(condition2){block_code_2}else{block_code_3}end** - if condition 1 is true then execute the code in block_code_1 else if condition 1 is false then consider condition 2, if condition 2 is true then execute the code in block_code_2 else if condition 2 is false then execute the cod in block_code_3. Use when number of condition is less than 3 or 4.

Example for if_elsif syntax:
``` ruby
def test_if_elsif(i)
	if i > 5
		puts ">5"
	elsif i == 5
		puts "=5"
	else
		puts "<5"
	end
end
puts test_if_elsif(5)
puts test_if_elsif(6)
```
Result of example in console:
```
#with command "puts test_if_elsif(5)"
=5
#with command "puts test_if_elsif(6)"
>5
```
- **unless(condition){block_code}end** - execute the code in block_code when condition is false else do nothing.

Example for unless syntax:
``` ruby
def test_unless(i)
	unless i > 5
		puts "<5 or =5"
	else
		puts ">5"
	end
end
puts test_unless(5)
puts test_unless(6)
```
Result of example in console:
```
#with command "puts test_unless(5)"
<5 or =5
#with command "puts test_unless6)"
>5
```
- **case...when** - use when number of condition is more than 4. Use like if...elsif syntax with different syntax.


Example for unless syntax:
``` ruby
def test_case(color)
	case color
		when 'blue' then puts "color is blue"
		when 'red'
			puts "color is red"
		else puts "you are stupid!"
	end
end
puts test_case(red)
puts test_case(green)
```
Result of example in console:
```
#with command "puts test_case(red)"
color is red
#with command "puts test_case(green)
you are stupid!
```
