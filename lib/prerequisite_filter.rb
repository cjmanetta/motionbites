module PrerequisiteFilter
  def self.filter_ineligible_exercises(user, exercises)
  	eligable_exercises = []
  	exercises.each do |exercise|
  	 eligable_exercises <<  exercise if prereqs_met?(user, exercise)
  	end
  	eligable_exercises
  end

  def self.prereqs_met?(user, exercise)
  	exercise.prerequisites.each do |prereq|
  		break if !user.views.include?(View.find_by(exercise_id: prereq.id))
  	end 	
  end
end
