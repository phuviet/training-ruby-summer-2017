## Ruby on Rails knowledge
> Include **Active Record Querying** and **Validates**
### Active Record Querying
> Is the methods be provided by rails for coder to query data from database quickly and easy to remember. There are many method such as: **all**, **where**, **find**, **find_by**, **order**, **first**, **last**, **save**, **destroy**, **create**, **new**, **update**,... and we also can add options or conditions into query method to query data which format you want.
- **all** - be usually used for select all data such as record from a table in database, this query return the array of data and be order by update_at in data table default ascending. However we can change the order by to decrease by method **order** be said below.

Example:
```
@users = User.all #return list of user for @users
```
- **order** - be used to sort data which be queried follow two type are asc(ascending) or desc(decrease) by options is a column in data table. **order** method be used behind others method which query list of data object.

Example:
```
@users = User.all #order by default update_at
@users = User.all.order(id: :desc) #order by decrease follow id
@users = User.all.order(id: :asc, name: :desc) #order by ascending follow id then decrease follow name
```

- **where** - be used to query a list of data from table which have the same as options or conditions by column's field in data table. We also can use **order** method behind to sort list data.

Example:
```
@usersbyname = User.where(name: 'Viet') #select in data table objects which have name is 'Viet' and return array for @usersbyname
@userbyname = User.where(name: 'Viet').order(id: :desc) #select in data table objects which have name is 'Viet' and return array for @usersbyname and order by decrease follow id
```
- **find** - be used to query an object in data table by option default is id of this object and limit 1. This method return an object. If this method can't query data in table, will have an error be informed.

Example:
```
@user = User.find(2) #select in data table an object which have id equal to 2
```

- **find_by** - be used to query an object in data table by option is one or many field in data table and limit 1. This method return an object. If this method can't query data in table, **nil** value will be return.

Example:
```
@user = User.find_by(id: 3) #query an object which have id equal to 3
@user = User.find_by(id: 3, name: 'Viet') #query an object which have id equal to 3 and name is 'Viet'
```

- **first** - be used to select the first element in list of object which be queried in data table by **all** or **where** method. This method can be call behind others method.

Example:
```
@users = User.all #query all object in table users
@user = @users.first #select the first element in @users

#or faster

@user = User.all.first
```

- **last** - be the same as **first** but this method select the last element in list of object.

Example:
```
@users = User.all #query all object in table users
@user = @users.last #select the last element in @users

#or faster

@user = User.all.last
```
- **new** - be used to create a new object prepare be save to data table in database.

Example:
```
@user = User.new(name: 'Viet', username: 'phuviet', password: '123')
```

- **save** - be used to save the new object be create above to data table in data base.

Example:
```
@user = User.new(name: 'Viet', username: 'phuviet', password: '123') #create new @user object
@user.save #insert this object into data table in database
```

- **create** - this method is combine two method **new** and  **save** above to create and save object faster.

Example:
```
User.create(name: 'Viet', username: 'phuviet', password: '123') #create and insert this object into database
```

- **update** - be used to update data of an object into data table which be queried.

Example:
```
@user = User.find(3) #query an object in data table which have id equal to 3
@user.update(name: 'Viet') #update attribute name = 'Viet' of object  which have id equal to 3

#or faster

User.find(3).update(name: 'Viet')
```

- **destroy** - use to delete an object of data table in database which be queried.

Example:
```
@user = User.find(3) #query an object which have id equal to 3
@user.destroy #delete this object from data table
```
- **destroy_all** - be used to delete all object in array of data which be queried from database.
Example:
```
@users = User.where(name: 'Viet') #query all object in data table which have name is 'Viet'
@users.destroy_all #delete all object which have name is 'Viet' in data table

#or faster

User.where(name: 'Viet').destroy_all
```

- We can use method .to_sql to show query string in rails console to check the correctness.

Example:
```
#first we need command 'rails c' in terminal
User.all.to_sql #will show query command 'SELECT * FROM users'
User.where(id: 3) #will show query command 'SELECT * FROM users WHERE id=3'
```

- Use characters **!** behind method's name to inform an **error** if something goes wrong.

Example:
```
@user = User.new(name: 'Viet') #create new object @user
@user.save!
```
### Validates
> Be provided for coder to check format data or required not null and some function. Some attribute of validates for data such as **presence**, **unique**, **length**, **on** or we can define a method or use **Proc** to validates data.

- **presence** - require not null for a attribute of receive object from **form** in views.

Example:
```
validates :password, precense: true #field password can't be blank
```

- **unique** - required not equal for data of an attribute which be received by object from **form** to this attribute field of one record in data table.

Example:
```
validates :username, unique: true
```

- **length** - require length maximum or minimum for data of an attribute which be receive by object from **form**.

Example:
```
validates :password, length: {minimun: 5, maximum: 20}
```

- **on** - be used to require validate on the action you want.

Example:
```
validates :fullname, presence: true, on: :update #require fullname not null in only action update 
```

- We can define method for validate and add error message for this field data.

Example:
```
validate :image_size

def image_size
	if image.size > 5.megabytes
		self.errors.add(:image,"Hinh anh < 5 MB")
	end
end
```
