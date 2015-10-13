class Cheese < ActiveRecord::Base
  has_many :users, through: :favorites
end
