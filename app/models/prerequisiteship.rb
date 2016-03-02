class Prerequisiteship < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :prerequisite, class_name: "Exercise"
end
