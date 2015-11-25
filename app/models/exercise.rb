class Exercise < ActiveRecord::Base
  has_many :views
  has_many :users, through: :views

  has_many :prerequisites
  has_many :prereqs, through: :prerequisites

end
