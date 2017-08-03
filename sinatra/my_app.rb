class MyApp < Sinatra::Base

	# get '/' do
	# 	# binding.pry
	# 	@viet = 'Hello viet'
	# 	erb :index
	# end

	get '/books' do
		connection = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'demngayxaem', database: 'book_shelf')
		@books = connection.query('SELECT *,u.fullname as fname FROM books as b INNER JOIN users as u WHERE b.id_user=u.id_user')
		erb :books
	end

	get '/books/new' do
		connection = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'demngayxaem', database: 'book_shelf')
		@users = connection.query('SELECT * FROM users')
		erb :book_new
	end

	post '/books/new' do
		connection = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'demngayxaem', database: 'book_shelf')
		query = "INSERT INTO books(name_book,author,publish_date,id_user) VALUES(\'#{params['name_book']}\', \'#{params['author']}\', \'#{params['publish_date']}\',\'#{params['lend_people']}\')"
		@books = connection.query(query)
		redirect '/books'
	end

	get '/books/:id/edit' do
		connection = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'demngayxaem', database: 'book_shelf')
		query = "SELECT * FROM books WHERE id_book=#{params['id']}"
		@book = connection.query(query)
		@users = connection.query('SELECT * FROM users')
		erb :book_edit
	end

	post '/books/edit' do
		connection = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'demngayxaem', database: 'book_shelf')
		query = "UPDATE books SET name_book=\'#{params["name_book"]}\',author=\'#{params['author']}\',publish_date=\'#{params['publish_date']}\',id_user=\'#{params['lend_people']}\' WHERE id_book=\'#{params['id_book']}\'"
		@edit = connection.query(query)
		redirect '/books'
	end

	get '/books/:id/delete' do
		connection = Mysql2::Client.new(host: 'localhost', username: 'root', password: 'demngayxaem', database: 'book_shelf')
		query = "DELETE FROM books WHERE id_book=#{params[:id]}"
		@delete = connection.query(query)
		redirect '/books'
	end
	
end