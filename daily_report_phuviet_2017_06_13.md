## Ruby basic knowledge day 2
>  Ruby basic knowledge day 2 include **Loops**, **Variables** and  **Methods**.

### Loops
> Have 5 types of loops in ruby such as **for loop**, **.times loop**, **while loop**, **until loop**, **loop loop**.

- **for** - be used when we want to execute the same block code many times and we know that how many times we want to execute this block code. Syntax of **"for"** loop:

Example for syntax of **"for"** loop:
```
#execute this block code 10 times
for i in 1..10
	print i
end
```

Result of example:
```
12345678910
```
- **.times** - be used when we want to execute the same block code many times and we know exact that how many times we want to execute this block code. Syntax of **".times"** loop:

Example for syntax of **".times"** loop:
```
#execute this block code 5 times
5.times do
	puts "ruby"
	puts "on rails"
end
```

Result of example:
```
ruby
on rails
ruby
on rails
ruby
on rails
ruby
on rails
ruby
on rails
```
- **while** - be used when we want to execute the same block code many times and we don't know that how many times this block code be executed. Syntax of **"while"** loop:

Example for syntax of **"while"** loop:
```
i = 1
while i < 10
	puts i
	i += 2
end
```

Result of example:
```
1
3
5
7
9
```

- **until** - be used when we want to execute the same block code many times and we don't know that how many times this block code be executed. Syntax of **"until"** loop:

Example for syntax of **"until"** loop:
```
i = 1
until i > 10
	puts i
	i += 2
end
```

Result of example:
```
1
3
5
7
9
```

- **loop** - if you use this loop then your block code will be executed infinitive. If you want to stop execute this block code, you must add condition for break out of the loop. Syntax of **"loop"** loop:

Example for syntax of **"until"** loop:
```
i = 1
loop do
	puts i
	i += 2
	#break out of the loop when i > 10
	break if i > 10
end
```

Result of example:
```
1
3
5
7
9
```
### Variables
> Have 5 types of variables in ruby such as **global variable**, **local variable**, **instance variable**, **class variable**, **constant variable**.

- **global variable** - the variable which create in program and can be used everywhere in program. Syntax to create **global variable** is add characters **"$"** in front of variable's name.

Example for **global variable** and demo program:`
```
$global_variable = 10
class Class1
	def print_global_variable
		puts "Global variable before change is #{$global_variable}"
		$global_variable += 2
		puts "Global variable after change is #{$global_variable}"
	end
end

objclass1 = Class1.new
objclass1.print_global_variable
```
Result of example:
```
Global variable before change is 10
Global variable after change is 12
```

- **local variable** - the variable which create in function of class and only be used inside this function. If function which be executed finish, this local variable will be deleted. Syntax to create **local variable** is only local variable name without any characters.

Example for **local variable** and demo program:`
```
class Class1
	def print_local_variable
		local_variable = 10
		puts "Local variable of function is #{local_variable}"
	end
end

objclass1 = Class1.new
objclass1.print_local_variable
#print local_variable outside function
puts local_variable
```
Result of example:
```
Local variable of function is 10
#error for print local_variable outside function
hello.rb:466:in `<main>': undefined local variable or method `local_variable' for main:Object (NameError)
```

- **instance variable** - is the variable of the object belonging to a class. This variable be created value when we create the object belong to a class and transfer values to instance variables into this object .Syntax to create **instance variable** is add characters **"@"** in front of variable's name.

Example for **instance variable** and demo program:`
```
class Class1
	def initialize(id,name,age)
		@id = id
		@name = name
		@age = age
	end
	def print_infor
		puts "Information is Id: #{@id}, Name: #{@name}, Age: #{@age}"
	end
end
objclass1 = Class1.new(1,"Phu Viet",22)
objclass1.print_infor
```
Result of example:
```
Information is Id: 1, Name: Phu Viet, Age: 22
```

- **class variable** - is the variable of the class. This variable can be used by every object belong to this class and when a object make change this class variable then others object belong to this class will update this variable.Syntax to create **class variable** is add characters **"@@"** in front of variable's name.

Example for **class variable** and demo program:`
```
class Class1
	@@class_variable = 0
	def initialize(id,name,age)
		@id = id
		@name = name
		@age = age
		@@class_variable += 1
	end
	def print_infor
		puts "Information is Id: #{@id}, Name: #{@name}, Age: #{@age}"
	end
	def print_class_variable
		puts "Class variable is #{@@class_variable}"
	end
end
objclass1 = Class1.new(1,"Phu Viet",22)
objclass1.print_class_variable
objclass2 = Class1.new(2,"Van Tu",22)
objclass1.print_class_variable
```
Result of example:
```
Class variable is 1
Class variable is 2
```

- **constant variable** - the variable which cannot be changed value throughout program. Syntax to create **constant variable** is uppercase all characters in variable's name.

Example for **constant variable** and demo program:`
```
class Class1
	VAR1 = 100
	VAR2 = 200
	def print_constant_variable
		puts "Constant variable 1 is #{VAR1}"
		puts "Constant variable 2 is #{VAR2}"
		#if we add lines code below into function, the program will have compiler error.
		VAR1 = 300
	end
end
objclass1 = Class1.new
objclass1.print_constant_variable
```
Result of example:
```
Constant variable 1 is 100
Constant variable 2 is 200
```
