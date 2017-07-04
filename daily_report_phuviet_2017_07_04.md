## Java Script knowledge day 1
> Java Script knowledge day 1 include: **Declare variables**, **Control flow**, **Loop**.
###  Declare variables
> Variables in java script can be created by 3 keyword. There're **var**, **let**, **const**.

-	**var** - be used when you want to create a global variable. If you use **var** to create variable in block, this variable is global variable but if you use **var** to create variable inside **function**, this variable is local variable and will be deleted when get out of function.

Example:
```
var hello = "Hello World!" //hello is global variable
if(true){var hello1 = "Hello Viet!"} //hello1 is global variable
function hello(){
	var hello2 = "Hello Kien!" //hello3 is local variable
}
```
- **let** - be used when you want to created a local variable. Keywords ** for ** used in blocks or functions are local variables.

Example:
```
if(true){let hello1 = "Hello Viet!"} //hello1 is local variable
function hello(){
	let hello2 = "Hello Kien!" //hello3 is local variable
}
```
- **const** - be used when you want to create a constant variable and variable be created with keyword **const** only read and can't change value. 

Example:
```
const hello = "Hello World!" //hello is constant variable, can't override
```

- We can check type of variables by keyword **typeof**. Example:
```
var hello = "Hello World!"
var number = 1
console.log(typeof hello) //=>result is: string
console.log(typeof number) //=>result is: number
```

### Control flow
> Control flow in java script include: if, if...else, if...else if, switch...case.

- **if(condition){block_code}** - if condition is true then execute the code in block code else do nothing.

Example:
```
if(true){
	console.log("Hello World!") //=>result is Hello World!
}
```
- **if(condition{block_code})**
**else{block_code_2}** -  if condition is true then execute the code in block_code_1 else execute the code in block_code_2.

Example:
```
var x = 3
if(x == 2){
	console.log("Hello World!")
}
else{
	console.log("Hello Viet!")
}
//=>result is Hello Viet!
```
- **if(condition1){block_code_1}**
**else if(condition2){block_code_2}**
**else{block_code_3}** - if condition 1 is true then execute the code in block_code_1 else if condition 1 is false then consider condition 2, if condition 2 is true then execute the code in block_code_2 else if condition 2 is false then execute the cod in block_code_3. Use when number of condition is less than 3 or 4.

Example:
```
var x = 3
if(x == 2){
	console.log("Hello World!")
}else if(x == 3){
	console.log("Hello Kien!")
}
else{
	console.log("Hello Viet!")
}
//=>result is Hello Kien!
```
- **switch(variable){**
**case value1:**
**statements1;**
**break;**
**case value2:**
**statements2;**
**break;**
**default**
**statements3;** -  use when number of condition is more than 4. Use like if...else if with different syntax.

Example:
```
var x = 3;
switch(x){
	case 1:
		console.log("Số 1");
		break;
	case 2:
		console.log("Số 2");
		break;
	case 3:
		console.log("Số 3");
		break;
	default:
		console.log("Số lớn hơn 3");
}
//=>result is Số 3
```
### Loop
> Loop in java script include **for**, **forEach**, **while**,.. but we usually use **for** and **forEach** loop in java script.

- **for** -  use when we want to execute one block code many times and we can break off this loop. 

Example for loop:
```
//usually use
arr = [1,2,3];
for(var i = 0;arr.length;i++){
	console.log(arr[i]);
}
//=>result
1
2
3
```

```
//usually use for object
var ob = {name: "viet", age: 22};
for(var i in ob){
	console.log(ob[i]); //=>get value of each object in ob
	console.log(i); //=>get key of each object in ob
}
//=>result
viet
name
22
age
```
- **Some function be usually use in java script** such as **filter**, **map**, **reverse**,...
- In addition to **console.log** we can use some syntax such as **confirm**(create a box for user confirm), **alert**(create box to inform for user), **prompt**(create a box for user fill in information).
