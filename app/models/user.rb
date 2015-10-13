class User < ActiveRecord::Base
  has_many :cheeses, through: :favorites
  has_secure_password
end
