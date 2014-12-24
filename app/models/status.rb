class Status < ActiveRecord::Base
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'

  validates :body, presence: true
end