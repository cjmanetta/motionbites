class Exercise < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :exertion, :technicality, :flexibility, :strength, :balance, presence: true, inclusion: {in: (1..5)}

  has_many :views
  has_many :users, through: :views

  has_many :prerequisiteships
  has_many :prerequisites, through: :prerequisiteships

end
