class Status < ActiveRecord::Base
  validates :body, presence: true
end