## Ruby basic knowledge day 4
>  Ruby basic knowledge day 3 include **Hash** and  **String**.
### Hash
> A Hash is a collection of key-value pairs like this: "employee" = > "salary". It is similar to an Array, except that indexing is done via arbitrary keys of any object type, not an integer index.
#### Way to create hash in ruby
Syntax:
```
hash = {
	"key1" => "value1",
	"key2" => "value2",
}
p hash
```
Result:
```
{"key1"=>"value1", "key2"=>"value2"}
```
#### Method of Hash
- **Hash.store(key,value), Hash[key] = value** - add an object with a key-value pair in hash.

Syntax:
```
hash = {a: 1, b: 2, c:3}
hash.store(:d,4)
hash[:e] = 5
p hash
```
Result:
```
{:a=>1, :b=>2, :c=>3, :d=>4, :e=>5}
```
- **Hash.merge(other_hash)** - returns a new hash containing the contents of hash and other_hash, if other_hash have the same key with hash, the value of this key in other_hash will be keep.

Syntax:
```
hash = {a: 1, b: 2, c:3}
p hash
p hash.merge({d: 4,c: 5})
```
Result:
```
{:a=>1, :b=>2, :c=>3}
{:a=>1, :b=>2, :c=>5, :d=>4}
```
- **Hash.delete(key)** - delete object in hash with key is argument transfer.

Syntax:
```
hash = {a: 1, b: 2, c:3}
hash.delete(:a)
p hash
```
Result:
```
{:b=>2, :c=>3}
```

- **Hash.delete_if{|key, value| block_code}** - delete object in hash if condition is true in block code.

Syntax:
```
hash = {a: 1, b: 2, c:3, d: 4, e: 5}
hash.delete_if{|key,value| value < 3.5}
p hash
```
Result:
```
{:d=>4, :e=>5}
```
### String
> Is a type of object in ruby which containing characters and value of variables when user want to show.
#### Way to create hash in ruby
Syntax:
```
str1 = "Đây là chuỗi string 1"
puts str1
str2 = String.new("Đây là chuỗi string 2")
puts str2
```
Result:
```
Đây là chuỗi string 1
Đây là chuỗi string 2
```
#### Way to show string and variables in String
- **" "** - is a relative string which it can be understand others language inside and execute this language.

Syntax:
```
name = "Việt"
puts "My name is #{name}"
```
Result:
```
My name is Việt
```
- **' '** - is an absolute string which it can't be understand others language inside and show all characters inside.

Syntax:
```
name = "Việt"
puts 'My name is #{name}'
```
Result:
```
My name is #{name}
```
#### Method of String
- **String.concat(other_string), String << other_string, String + other_string** - add other string at the last of initial string but **+** method need variable to contain new string.

Syntax:
```
str1 = "My "
str1.concat("name ")
str1 <<  "is "
str1 = str1 + "Việt"
puts str1
```
Result:
```
My name is Việt
```
- **String.delete "substring" , String.delete! "substring"** - delete substring in initial string but **String.delete** create a new string and **String.delete!** is update initial string. 

Syntax:
```
str1 = "Hello"
puts str1.delete "l"
puts str1
str1.delete! "l"
puts str1
```
Result:
```
Heo
Hello
Heo
```

- **String.to_i(base=10)** - convert the string to integer object  base 10 or convert the string to others base depend on argument transfer.

Syntax:
```
puts "12".to_i
puts "210".to_i(3)
```
Result:
```
12
# result = 2.3^2 + 1.3^1 + 0.3^0
21
```
- **String.gsub(pattern, replacement)** - create a new string and replace substring in initial string by replacement string.

Syntax:
```
str1 = "My name is John"
puts str1.gsub("name is","name's")
```
Result:
```
My name's John
```

- **String.reverse** -  returns a new string with the characters from string in reverse order.

Syntax:
```
str1 = "Game over"
puts str1.reverse
```
Result:
```
revo emaG
```

- **String.include? "other_string"** - return true if initial string is contain other_string, false is otherwise.

Syntax:
```
str1 = "My name is John"
puts str1.include? "name is"
```
Result:
```
true
```

- **String.insert(index, other_string)** - insert other_string into initial string begin at index.

Syntax:
```
str1 = "My name John"
str1.insert(7," is")
puts str1
```
Result:
```
My name is John
```
