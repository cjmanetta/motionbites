class Prerequisite < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :prereq, class_name: "Exercise"
end
