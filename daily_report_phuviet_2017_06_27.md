
## Ruby basic knowledge day 7
>  Ruby basic knowledge day 7 includes **Sinatra**.
> **Sinatra** - sinatra is a gem as library used to build a simple website.

### Install gem sinatra
`gem install sinatra`
### Routes in sinatra  
- A route	is	an HTTP method	paired	with	a URL-matching	pattern. Each route is associated with a	block:
```
get	'/'	do
		..	show	something	..
end
post	'/'	do
		..	create	something	..
end
put	'/'	do
		..	replace	something	..
end
patch	'/'	do
		..	modify	something	..
end
delete	'/'	do
		..	annihilate	something	..
end
# 5 blocks above is usually be used
options	'/'	do
		..	appease	something	..
end
link	'/'	do
		..	affiliate	something	..
end
unlink	'/'	do
		..	separate	something	..
end
```
- Sinatra's route is a block used to process HTTP requests with some method and uri, the content returned to the client will be processed in this block. In the uri part of the block can contain parameters, these parameters are accessed via hash params. Example:

```
get "/posts/:id" do
  @post = Post.find params[:id]
end
```

### View in sinatra
#### Template
- The view is the content of the web page returned to the client. In addition to returning directly through the character string as in the introduction example, Sinatra allows defining templates and returning the contents of these templates. Templates are placed in the application's views folder.
#### Transfer variables to view
- Instance variables in HTTP request processing blocks can be used in templates. Example:
```
# app.rb
get "/posts/:id" do
  @post = Post.find params[:id]
  erb :show
end
```

```
# show.erb
<p><%= @post.content %></p>
```
### Build application
#### Use sinatra
- After install sinatra gem then **required 'sinatra'** in top of file to use. Example:

```
gem "sinatra"

get '/' do
	"Hello World!"
end
```
#### Use gem mysql2 to connect database
- Install gem **mysql2**
`gem install mysql2`
- Add **required 'mysql2'** in top of program to use gem mysql2. Example:
```
required 'mysql2'
```
- Connect database by **mysql2** with syntax **Mysql2::Client.new(host: 'localhost', username: 'root', password: your_password, database: your_database)**. Example:
```
required 'sinatra'
required 'mysql2'

get '/books' do
		connection = Mysql2::Client.new(host: 'localhost', username: 'root', password: '', database: 'book_shelf')
		@books = connection.query('SELECT *,u.fullname as fname FROM books as b INNER JOIN users as u WHERE b.id_user=u.id_user')
		erb :books
	end
```
