	
## Java Script knowledge day 2
> Java Script knowledge day 2 include: **Function**, **DOM**, **Events**.
### Function in Java Script
> There are 2 type of function in Java Script: **Declarations**, **Expression**.

- **Declarations function** - declare function directly by name's function and we can call this function every where(above or below function which be declared). **Declarations function** usually be used to create the big function with many of line code.

Example:
```
console.log(sum(2,3)); //=> result: 5
function sum(x,y){
	return x + y;
}
console.log(sum(3,4)); //=>result: 7
```
- **Expression function** - the function which be declared by use one variables to contain function and we can call this function by call this variable but only below function declared. **Expression function** suitable for the small function with a few line of code.

Example:
````
console.log(sum(2,4)); //=>result: error - function sum not be defined
var sum = function(x,y){
	return x + y;
}
console.log(sum(2,4)); //=>result: 6
```

#### Other things of Function
- We can use arguments to replace parameters in **function**.

Example:
```
var add = function(){
	return arguments[0] + arguments[1];
};
console.log(add(4,5)); //=>result: 9
```
- Closure in **function** - we can create function which can contain other child function. If this child function have parameters then this parameters will be take by each parameter of parent function .

Example:
```
function addSquares(a,b){
	function square(z){
		return z * z;
	}
	return square(a) + square(b);
}
console.log(addSquares(3,4)); //=>result: 25
```
### DOM in Java Script
> Each element in HTML be call node and with **DOM** we can work with this node such as find HTML element(s), change HTML element(s), create and delete HTML element(s),...
#### Finding HTML Element(s)
> We can find HTML element(s) by use syntax in java script:
- **document.getElementById('id')** - be used to find the element which be know **id** and this syntax return only one element because **id** is individual.

Example:
```
#html
<p id="text">HTML Text</p>

#java script
var x = document.getElementById('text');
console.log(x.innerHTML); //=>result: HTML Text
```
- **document.getElementsBytagname('name')** - be used to find the elements which have tag's name is equal to parameter in syntax and this syntax return an array of elements which have this tag's name.

Example:
```
#html
<div>
	<p>Text number 1</p>
	<p>Text number 2</p>
</div>

#java script
var x = document.getElementsByTagNam('p');
console.log(x[1].innerHTML); //=>result: Text number 2
```

- **document.getElementsByClassName('name')** - be used to find the elements which have **class** is equal to parameter in syntax and this syntax aslo return an array of elements.

Example:
```
<div>
	<p class="text">Text number 1</p>
	<p>Text number 2</p>
	<p class="text">Text number 3</p>
</div>

#java script
var x = document.getElementsByClassName('text');
console.log(x[1].innerHTML); //=>result: Text number 3
```
- **querySelectorAll('name')** - be used to find all child elements(child node) with tag's name is equal to parameter in syntax of parent element(parent node).

Example:
```
#html
<div id="text">
	<p>Text number 1</p>
	<p>Text number 2</p>
</div>

#java script
var x = document.getElementById('text');
var y = x.querySelectorAll('p');
console.log(y[1].innerHTML); //=>result: Text number 2
``` 
#### Changing HTML element
> We can change HTML element by add content for element(s), set attribute for elements(s) or can change content and attribute of element(s).

- **element.innerHTML = new html content** - be used to add new content of element(s) or change the current content of element(s).

Example:
```
#html
<p class="text">This Old Text</p>

#java script
var x = document.getElementById('text');
x.innerHTML = "This New Text";
console.log(x.innerHTML); //=>result: This New Text
```
- **element.setAttribute(attribute,value)** - be used to set new attribute for element such as: class, id,...

Example:
```
#html
<p>This Is Text</p>

#java script
var x = document.getElementsByTagName('p');
x[0].setAttribute('id','text');
var y = document.getElementById('text');
console.log(y.innerHTML) //=>result: This Is Text
```
- **element.style.property = new style**- be used to change value of property of **style** attribute such as: color, font-size,....

Example:
```
#html
<p id='text'>This Is Text</p>

#java script
var x = document.getElementById('text')
x.style.color = 'red';
x.style.fontSize = '20px';
```
#### Adding and Deleting Element(s)
> We can add or delete element(s) in **body** tag or parent node contain this element will be deleted.

- **document.createElement(element)** and **document.appendChild(element)** - add element(s).
Example:
```
#html add element to parent node
<div id="text">
</div>

#java script
var x = document.createElement('p');
x.innerHTML = "This Is Text";
var y = document.getElementById(text);
y.appendChild(x)

#new html
<div id="text">
	<p>This Is Text</p>
</div>
```

#### Events
> Java Script provided event to execute some thing when one of event happen such as: onclick, onfocus, onchange, onmouseover,...

- **onclick** - happen when click to element.
- **ondbclick** - happen when double click to element.
- **onchange** - happen when value of HTML tag be changed, usually be used for tag input in form.
- **onmouseover** - happen when cursor start enter this HTML tag.
