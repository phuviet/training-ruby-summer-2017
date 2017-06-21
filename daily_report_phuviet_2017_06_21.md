## Ruby basic knowledge day 5
>  Ruby basic knowledge day 5 include **Closure** and  **Debug**.
### Closure
> The special thing in ruby, is to say Ruby's superiority over other languages(as Mr Kien say).**Closure** include **Block**, **Proc** and **Lambda**.
#### Block
##### Ways to create a new Block:
- **{}** - to create a new **Block** to execute one statements or some statement with characters **";"** between.

 Syntax:
```
arr = [1,2,3]
arr.each{|x| print x;puts x + 1}
```
Result:
```
12
23
34
```
- **do**
**end** - create a new **Block** to execute one or some statements and each statement is on one line.

 Syntax:
```
arr = [1,2,3]
arr.each do |x|
	print x
	puts x + 1
end
```
Result:
```
12
23
34
```
##### Relationships between yield and block
- **yield** - usually be used inside function to receive one block need to execute like an argument which be transfer by function call. 

 Syntax:
```
def yield_block
	yield
end
yield_block {puts 123}
```
Result:
```
123
```
#### Proc
##### Ways to create a new Proc
- **Proc.new do |x|**
**end** - create a new **Proc** with one parameter or more. **Proc** can execute statements end return result with this parameter or make condition for others methods of object in ruby and each statement is on one line.

 Syntax:
```
multiples_of_3 = Proc.new do |x|
	x.to_i % 3 == 0
end
(1..50).to_a.select(&multiples_of_3)
```
Result:
```
[3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36, 39, 42, 45, 48]
```
- **Proc.new {|x| block_code}** - create a new **Proc** with one parameter or more. **Proc** can execute statements end return result with this parameter or make condition for others methods of object in ruby and statements can on one line between characters **";"**.

 Syntax:
```
multiples_of_3 = Proc.new {|x| x.to_i % 3 == 0}
(1..50).to_a.select(&multiples_of_3)
```
Result:
```
[3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36, 39, 42, 45, 48]
```
- **proc {}** - same as **Proc.new**.
- **proc do**
**end** - same as **Proc.new do |x|...end**.

##### Execute Proc
- **use method .call([parameters])** - call **Proc** and execute statements be defined inside.

 Syntax:
```
proc = Proc.new {|x| puts x}
proc.call(123)
```
Result:
```
123
```
#### Lambda
##### Ways to create a new Lambda
- **lambda {|x| block_code}** - create a new **Lambda** with one parameter or more. **Lambda** can execute statements end return result with this parameter or make condition for others methods of object in ruby and statements can on one line between characters **";"**.

 Syntax:
```
lam = lambda {|x,y| puts x,y}
lam.call(1,12)
```
Result:
```
1
12
```
##### Execute Lambda
- **use method .call([parameters]), lam.(parameters), lam[parameters]** - call **Lambda** and execute statements be defined inside.

 Syntax:
```
lam = lambda {|x| puts x+5}
lam.call(5)
```
Result:
```
10
```
#### Different between Block, Proc and Lambda
- **Block**
	- not an object, unable to assign for variables.
	- different syntax with **Proc** and **Lambda**.

Example
```
x = {puts "Viet"}
```
Result
```
hello.rb:1227: syntax error, unexpected tSTRING_BEG, expecting keyword_do or '{' or '('
```
- **Proc**
	- is an object, able to assign for variables.
	- different syntax with **Block** and **Lambda**.
	- **return** in **Proc** is return for function, break out of function if proc contain **return** be called.
	- don't care about the number of parameters of **Proc**, although numbers of parameter transfer to **Proc** is less or more than number of parameters required by **Proc** but **Proc** still execute.
	
Example
```
proc = Proc.new {|x,y| puts x,y}
proc.call()
proc.call(1,2)
proc.call(1,2,3)
```
Result
```


1
2
1
2
```

- **Lambda**
	- - is an object, able to assign for variables.
	- different syntax with **Block** and **Proc**.
	- **return** in **Lambda** is return value for variable, don't break out of function if lambda contain **return** be called.
	- care about the number of parameters of **Lambda**, if numbers of parameter transfer to **Lambda** is less or more than number of parameters required by **Lambda** then **Lambda** will inform error.

```
lam = lambda {|x,y| puts x,y}
lam.call()
lam.call(1,2)
lam.call(1,2,3)
```
Result
```
1
2
hello.rb:1262:in `block in <main>': wrong number of arguments (given 0, expected 2) (ArgumentError)
```
### Debug
> Gem is the same as library in Ruby be write by designer and have open source to every people can be use to work easy and fast more. We use gem **"pry"** to debug program.

- To use gem **pry** we need to install gem **pry** first by command line in terminal `gem install pry` then we need to include this **library** into program by command line `required 'pry'`.

That program use gem **pry** to debug:
```
require 'pry'

class Hello
	def initialize(hello)
		@hello = hello
	end

	def hello
		binding.pry
		@hello
	end
end

salute = Hello.new("Hello, Mac!")
#call hello function of Hello class have contain binding.pry to debug program from this line.
puts salute.hello
```
