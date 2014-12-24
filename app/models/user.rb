class User < ActiveRecord::Base
  has_secure_password validations: false

  validates :username, presence: true, length: {minimum: 3}
  validates :email, presence: true, format: { with: /\A[\w\d]+[@][a-z]+.(com|co.uk)\z/, 
    message: 'The email address you entered is not valid' }
  validates :password, presence: true, length: {minimum: 8}, on: :create
end