# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  author     :string(255)
#  name       :string(255)
#  title      :string(255)
#  isn        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ApplicationRecord
  has_many :orders
  has_many :carts, through: :orders
  has_many :comments

  scope :books_by_author, lambda { |author, id|
    joins(orders: { cart: :user }).where("books.author = \'#{author}\' AND users.id = \'#{id}\'").distinct
  }
end
