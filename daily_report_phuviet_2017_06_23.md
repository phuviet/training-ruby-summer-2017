## Ruby basic knowledge day 6
>  Ruby basic knowledge day 6 includes **Class** and  **Module**.
### Class
> Is a collection of objects with common attributes and methods.
#### Constructor of class in Ruby
> Each class in ruby only have one constructor, if we create more one constructor then this class will use the last constructor to create the new class's object with default initial value. Constructor in Ruby be created by using **"initialize"** for def.

Example constructor of class in Ruby
```
class Person
	def initialize(name,age)
		@name = name
		@age = age
	end
	def initialize(name,age,dateofbirth)
		@name = name
		@age = age
		@dateofbirth = dateofbirth
	end
end

p Person.new("Viet",22,"28/4/1995")
```
Result
```
#<Person:0x0055c568507160 @name="Viet", @age=22, @dateofbirth="28/4/1995">
#error because class use the second constructor
test.rb:87:in `initialize': wrong number of arguments (given 2, expected 3) (ArgumentError)
	from test.rb:95:in `new'
	from test.rb:95:in `<main>'
```
#### Getter, setter of class in Ruby
> Is a method be created to get and set value of instance variables of class in ruby because class have packaging qualities. The objects of class can't get or set value for instance variables directly.

- **use method in class**

Example getter, setter of class in Ruby use method
```
class Person
	def initialize()
	end
	def name
		@name
	end
	def name=(str)
		@name = str
	end
end

viet = Person.new
viet.name = "Viet"
p viet.name
```
Result
```
"Viet"
```

- **use attr_[option] :name_instance_variable** - use option **reader** is the same with get method or use option **write** is the same with set method or we can use option **accessor** is the same with both get and set method of class in Ruby.

Example getter, setter of class in Ruby use attr_[option] :name_instance_variable
```
class Person
	attr_reader :name
	attr_writer :name
	attr_accessor :age
	def initialize()
	end
end

viet = Person.new
viet.name = "Viet"
viet.age = 22
p viet
```
Result
```
#<Person:0x00556b34dff350 @name="Viet", @age=22>
```

#### Class method(self) in Ruby
> Is the method only used by the class by calling the class name before the method's class name and this class can only use class variable. There are 3 ways to declare the class method in Ruby:

- **def Class_name.name_method**
**end**

Example class method in Ruby
```
class Person
	def initialize(name,age,dateofbirth)
		@name = name
		@age = age
		@@dateofbirth = dateofbirth
	end
	def Person.show
		 puts "Date of birth is #{@@dateofbirth}"
	end
end

viet = Person.new("Viet",22,"28/04/1995")
Person.show
viet.show
```
Result
```
Date of birth is 28/04/1995
test.rb:94:in `<main>': undefined method `show' for #<Person:0x0055b9ec9870c8 @name="Viet", @age=22> (NoMethodError)
```

- **def self.name_method**
**end**

Example class method in Ruby
```
class Person
	def initialize(name,age,dateofbirth)
		@name = name
		@age = age
		@@dateofbirth = dateofbirth
	end
	def self.show
		 puts "Date of birth is #{@@dateofbirth}"
	end
end

viet = Person.new("Viet",22,"28/04/1995")
Person.show
viet.show
```
Result
```
Date of birth is 28/04/1995
test.rb:94:in `<main>': undefined method `show' for #<Person:0x0055b9ec9870c8 @name="Viet", @age=22> (NoMethodError)
```
- **class << self**
declare_class_methods
**end**

Example class method in Ruby
```
class Person
	def initialize(name,age,dateofbirth)
		@name = name
		@age = age
		@@dateofbirth = dateofbirth
	end
	class << self
		def show
			puts "Date of birth is #{@@dateofbirth}"
		end
	end
end

viet = Person.new("Viet",22,"28/04/1995")
Person.show
viet.show
```
Result
```
Date of birth is 28/04/1995
test.rb:94:in `<main>': undefined method `show' for #<Person:0x0055b9ec9870c8 @name="Viet", @age=22> (NoMethodError)
```


#### Inheritance
> Class in ruby can inherit one or more than one class. To inherit one class we use **Parent_class < Sub_class** and sub_class can use method in parent_class by keyword **super** or can override this class.

Example class method in Ruby
```
class Animal
	def initialize()
	end
	def move
		"I can move"
	end
end

class Rabbit < Animal
	def initiaize()

	end
	def move
		super + " by jump!"
	end
end

animal = Animal.new
puts animal.move
rabbit = Rabbit.new
puts rabbit.move
```
Result
```
I can move
I can move by jump!
```

#### Public, private of class methods and class variables in Ruby
> Used to view the ability to use methods or variables of an object of that class, if private is declared on the top of the method or variable, only allow methods in the class to use them and the object of the class can not use.

Example class method in Ruby
```
class Person
	def initialize(name,age)
		@name = name
		@age = age
	end
	private
	def name=(str)
		@name = str
	end
	public
	def name
		@name
	end
	def show
		name=("Phien")
	end
end

person = Person.new("Viet",22)
puts person.name
person.name = "Tu"
puts person.show
```
Result
```
Viet
test.rb:101:in `<main>': private method `name=' called for #<Person:0x0055d822433190 @name="Viet", @age=22> (NoMethodError)
Did you mean?  name
#if line puts person.show is above line person.name = "Tu" then output is
Phien
```
### Module
> Used to declare methods that are shared by many other classes.

- **use as normal method** - use by **include** name_module into class.

Example class method in Ruby
```
module Action
	def jump
		@distance = rand(4) + 2 
		puts "I jump qwoie #{@distance} feet!"
	end
end

class Rabbit
	include Action
	attr_reader :name
	def initialize(name)
		@name = name
	end
end

peter = Rabbit.new("Peter")
peter.jump
```
Result
```
I jump qwoie 5 feet!
```

- **use as class method** - use by **extend** name_module into class.

Example class method in Ruby
```
module Action
	def jump
		@distance = rand(4) + 2 
		puts "I jump qwoie #{@distance} feet!"
	end
end

class Rabbit
	extend Action
	attr_reader :name
	def initialize(name)
		@name = name
	end
end

peter = Rabbit.new("Peter")
Rabbit.jump
```
Result
```
I ju
