## HTML basic knowledge day 2
> **HTML basic knowledge day 2** include **form**.
### Demo form in HTML
```
<form action="page_resource.rb" method="post">
	<div>
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" >
	</div>
	<div>
		<label for="email">Email:</label>
		<input type="email" id="email" name="email" >
	</div>
	<div>
		<button type="submit">Submit</button>
	</div>
</form>
```
### Components of the form
**< label >** tag - container for title of one field in form.
**< button >** tag - with type is **"submit"** be used to submit this form to page which receive data of this form and execute request of user. Syntax of this button be performed in demo program above.
**< input >** tag - is one field in form which user can fill in information such as name, address, email, phone,... or choice options. In other words it can be said that the user can manipulate with the program. The various functions of the input tag depend on the type attribute of this tag such as: **text**, **password**, **checkbox**, **submit**, **reset**...
- **text** type -  user can fill in every characters into this field and this field show all every characters which user just fill in.
	
Example **text** type of **input** tag:
> < input type="text" id="name" name="name" value="Nguyen Phu Viet" >

Result of this example:
<input type="text" id="name" name="name" value="Nguyen Phu Viet">

- **password** type  - used to fill in password of user and show all characters **"*"** in this field to hide user's password.
	
Example **password** type of **input** tag:
> < input type="password" id="password" name="password"  value="Nguyen Phu Viet" >

Result of this example:
<input type="password" id="password" name="password" value="Nguyen Phu Viet">

- **checkbox** type - be used to choice, active or not one item in form and can be click again to swap to state before.

Example **checkbox** type of **input** tag:
> < input type="checkbox" id="active" name="active"  >

Result of this example:
<input type="checkbox" id="active" name="active" >

- **submit** type - create a button which user can submit all data be filled in in form to another page which identify by attribute **action=""** of **< form >** tag to receive data of this form and execute request of user.

Example **submit** type of **input** tag:
> < input type="submit" id="send" name="send"  value="Submit form" >

Result of this example:
<input type="submit" id="send" name="send" value="Submit form" >

- **reset** type - reset all field in form to default value.

Example **reset** type of **input** tag:
> < input type="reset" id="reset" name="reset"  value="Reset form" >

Result of this example:
<form action="page_resource.rb" method="post">
	<div>
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" value="Nguyen Phu Viet" >
	</div>
	<div>
		<label for="email">Email:</label>
		<input type="email" id="email" name="email" >
	</div>
	<div>
		<input type="reset" id="reset" name="reset" value="Reset form">
	</div>
</form>
