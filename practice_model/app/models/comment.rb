# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :text(65535)
#  image      :string(255)
#  rating     :integer
#  user_id    :integer
#  book_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :book
end
