module PrerequisiteFilter
  def self.filter_ineligible_exercises
    
  end

  def self.prereqs_met?(user, exercise)
  	exercise.prerequisites.each do |prereq|
  		break if !user.views.include?(View.find_by(exercise_id: prereq.id))
  	end 	
  end
end
