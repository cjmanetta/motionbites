# require 'rails_helper'


# describe PrerequisiteFilter do
#   let(:main_exercise) { create(:exercise)  }
#   let(:prerequisites) { create_list(:exercise, 2)  }
#   let(:user) { create(:user) }
 

#   context "#prereqs_met?" do
#     it "returns false when the user history does not contain all of the prerequisites for an exercises" do
#     	main_exercise.prerequisites << prerequisites.first
#     	main_exercise.prerequisites << prerequisites.second

    	
#       expect(PrerequisiteFilter.prereqs_met?(user, main_exercise)).to be_falsey
#     end

#     it "returns true when the user history contains all of the prerequisites for an exercises" do
#     	main_exercise.prerequisites << prerequisites.first
#     	main_exercise.prerequisites << prerequisites.second
#     	view1 = create(:view, exercise_id: main_exercise.prerequisites.first.id, user_id: user.id)
#   		view2 = create(:view, exercise_id: main_exercise.prerequisites.second.id, user_id: user.id)
  
#       expect(PrerequisiteFilter.prereqs_met?(user, main_exercise)).to be_truthy
#     end
#   end

#   context "#filter_ineligible_exercises" do

#   	it "filters the exercises whose prerequsities have not been met", :focus do
#   		create_list(:exercise, 10)
  		
#   		main_exercise.prerequisites << prerequisites.first
#     	main_exercise.prerequisites << prerequisites.second

#   		Exercise.first.prerequisites << Exercise.second

#   		view1 = create(:view, exercise_id: main_exercise.prerequisites.first.id, user_id: user.id)
#   		view2 = create(:view, exercise_id: main_exercise.prerequisites.second.id, user_id: user.id)	


#   		unfiltered_exercises = Exercise.all
#   		filtered_exercises = PrerequisiteFilter.filter_ineligible_exercises(user, unfiltered_exercises)

#   		expect(filtered_exercises.length).to eq(unfiltered_exercises.length - 1)

#   	end
#   end

# end
