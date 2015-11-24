class Exercise < ActiveRecord::Base
  has_many :views
  has_many :users, through: :views

  # self join for prerequisites
  has_many :prerequisites, class_name: "Exercise", foreign_key: "current_exercise_id"
  belongs_to :current_exercise, class_name: "Exercise"

end
