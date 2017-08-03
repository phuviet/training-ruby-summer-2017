# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string(255)
#  email      :string(255)
#  password   :string(255)
#  name       :string(255)
#  gender     :integer
#  birthday   :datetime
#  role       :integer          default("member")
#  avatar     :string(255)
#  provider   :string(255)
#  uid        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  attr_accessor :remember_token
  mount_uploader :avatar, AvatarUploader

  has_many :carts # class_name: 'Cart'
  has_many :orders, through: :carts
  has_many :books, through: :orders
  has_many :comments
  # has_one :cart

  validates :username, :email, uniqueness: true, on: :update
  # validates :password, presence: true, confirmation: { case_sensitive: true }
  # validates :password_confirmation, presence: true
  validates :email, presence: true, if: proc { provider == 'email' }
  # validates :email, format: { with: /\A[a-zA-Z]([a-zA-Z.])+(@asiantech.vn)\z/, message: 'Format is uncorrect'}
  validates :name, length: { in: 6..30 }, allow_blank: true
  validate :birthday_validate
  validate :avatar_size
  validates :uid, uniqueness: { scope: :provider }, on: :update

  enum gender: %w[Male Female]
  # or enum gender: %w(male female gay les other)
  enum role: %w[Member Mod Admin]

  def birthday_validate
    errors.add(:birthday, 'must be over 16 years old') if birthday.present? && (Time.now - 16.years < birthday)
  end

  def avatar_size
    # errors.add(:avatar, 'Picture is bigger than 5MB') if avatar.present? && avatar.size > 5.megabytes
  end

  class << self
    def new_token
      SecureRandom.urlsafe_base64
    end

    def digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end
  end

  def confirm
    update_attribute(:confirm_token, User.new_token)
    update_attribute(:confirm_send_at, Time.now)
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  def forget
    update_attribute(:remember_digest, nil)
  end
end
