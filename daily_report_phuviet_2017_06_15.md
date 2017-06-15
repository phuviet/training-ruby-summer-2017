## Ruby basic knowledge day 3
>  Ruby basic knowledge day 3 include **Array** and  **Hash**.

### Array
> Is a collection of objects of the same data type or different data type and array is begin at index 0. There are many ways to create an array such as create empty array without number of size of array, create empty array with number of size of array and the default value of object of array is **nil**, create an array with directly value, create an array with number of size of array and directly of the same value, create an array with number of size of array and set value for each object in array by block code,...

#### Ways to create arrays in ruby
- **Create empty array without number of size of array**.

Syntax:
```
array = []
array = Array.new
array = Array.new()
p array
```
Result:
```
[]
```
- **Create empty array with number of size of array and the default value of object of array is "nil" **.

Syntax:
```
#create an array with size is 10
array = Array.new(10)
p array
```
Result:
```
[nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
```
- **Create an array with directly value**.

Syntax:
```
#create an array with directly value
array = [1,2,3,4,5]
p array
```
Result:
```
[1, 2, 3, 4, 5]
```
- **create an array with directly of the same value**.

Syntax:
```
#create an array with size is 10 and value of all object is 1
array = Array.new(10,1)
p array
```
Result:
```
[1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
```
- **Create an array with number of size of array and set value for each object in array by block code**.

Syntax:
```
#create an array with size is 10 and value of behind object is large than in front of object is 1
array = Array.new(10){|x| x + 1}
p array
```
Result:
```
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

#### Methods of array
- **Array.push(""), Array<<"", Array[Array.length]="" ** - this methods to add an object to the last index of array.

Syntax:
```
array = [1,2,3]
array.push(4)
p array
array<<5
p array
array[array.length] = 6
p array
```
Result:
```
[1, 2, 3, 4]
[1, 2, 3, 4, 5]
[1, 2, 3, 4, 5, 6]
```

- **Array[index], Array.at(index), Array.last** - this methods to query value of object in index of array.

Syntax:
```
array = [1,2,3,4,5]
p array[0] #print values object at index 0
p array.at(1) #print values object at index 1
p array.last #print values object at the last index
p array[array.length-1] #print values object at the last index
p array[-1] #print values object at the last index
```
Result:
```
1
2
5
5
5
```
- **Array[index]=""** - this methods to set value of object in index of array.

Syntax:
```
array = [1,2,3,4,5]
#set value of object at index 0 is 2
array[0] = 2 
p array
#set value of object at the last index is 10
array[array.length-1] = 10 
p array 
array[-1] = 11 
#set value of object at the last index is 11
p array
```
Result:
```
[2, 2, 3, 4, 5]
[2, 2, 3, 4, 10]
[2, 2, 3, 4, 11]
```

- **Array[start,length]** -  get objects of array begin at index **start** to index **length**.

Syntax:
```
array = [1,2,3,4,5]
p array[1,3]
```
Result:
```
[2, 3, 4]
```

- **Array[start,length]=[array1]** - delete object in array begin at index **start** to index **length**  then insert objects at array1 to array begin at index **start**.

Syntax:
```
array = [1,2,3,4,5]
array[1,3] = [3,4,5]
p array
```
Result:
```
[1, 3, 4, 5, 5]
```

- **Array.map{block_code}, Array.collect{block_code}** - create a new array from old array with rules be concept in block code.  

Syntax:
```
array = [1,2,3,4,5]
#create a new array with each object in new array is larger than each object in old array
p array.collect{|x| x + 1}
#create a new array with each object in new array is double than each object in old array
p array.map{|x| x * 2}
```
Result:
```
[2, 3, 4, 5, 6]
[2, 4, 6, 8, 10]
```

### Hash
> Type of array which each object have one key and one value. We can query values each object by query hash with key of object.

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
