# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



50.times do
  email = Faker::Internet.user_name(5..8) + "@asiantech.vn"
  User.create!(
    username: Faker::Internet.user_name(5..8),
    email: email,
    password: '123456',
    password_confirmation: '123456',
    name: Faker::Name.name,
    gender: rand(0..1),
    birthday: Faker::Date.birthday(20,25),
    avatar: Faker::Avatar.image(slug = nil, size = "100x100", type = "jpg"),
    provider: 'email',
    uid: email
  )
end

300.times do
  Book.create(
    author: Faker::Book.author,
    name: Faker::Book.title,
    title: Faker::Book.title,
    isn: Faker::Number.number(10)
  )
end

30.times do
  Cart.create(user_id: User.all.ids[rand(User.count)])
end

40.times do
  Order.create(cart_id: Cart.all.ids[rand(Cart.count)], book_id: Book.all.ids[rand(Book.count)])
end

50.times do
  Comment.create(
    content: Faker::Lorem.paragraph,
    image: Faker::Avatar.image(slug = nil, size = "100x100", type = "jpg"),
    rating: rand(1..5),
    user_id: User.all.ids[rand(User.count)],
    book_id: Book.all.ids[rand(Book.count)]
  )
end
