class Exercise < ActiveRecord::Base
  has_many :views
  has_many :users, through: :views
end
