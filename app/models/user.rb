class User < ActiveRecord::Base
  has_secure_password validations: false
  has_many :statuses

  validates :username, length: {minimum: 3, message: 'Your username must have more than 2 characters'}
  validates :email, presence: true, format: { with: /\A[\w\d]+[@][a-z]+.(com|co.uk)\z/, 
    message: 'The email address you entered is not valid' }, on: :create
  validates :password, length: {minimum: 8}, on: :create
end