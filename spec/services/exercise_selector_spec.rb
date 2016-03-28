require 'rails_helper'

describe ExerciseSelector do
	let(:user) { create(:user_with_views)}
	let(:selector) { ExerciseSelector.new(user) }

	
	context "#filter_recent_views", :focus do
		it "filters the recently viewed exercises out of the exercises eligable to be played" do
			create_list(:exercise, 10)
			unfiltered_exercises = Exercise.all
			filtered_exercises = selector.filter_recent_views

			expect(filtered_exercises.length).to eq(unfiltered_exercises.length - 3)
		end
	end

	context "prerequisite filter", :focus do
		let(:user) { create(:user)}
		let(:selector) { ExerciseSelector.new(user) }

		let(:main_exercise) { create(:exercise)  }
		let(:prerequisites) { create_list(:exercise, 2)  }

		context "#prereqs_met?" do

			it "returns false when the user history does not contain all of the prerequisites for an exercises" do
				main_exercise.prerequisites << prerequisites.first
				main_exercise.prerequisites << prerequisites.second


				expect(selector.prereqs_met?(main_exercise)).to be_falsey
			end

			it "returns true when the user history contains all of the prerequisites for an exercises" do
				main_exercise.prerequisites << prerequisites.first
				main_exercise.prerequisites << prerequisites.second

				view1 = create(:view, exercise_id: main_exercise.prerequisites.first.id, user_id: user.id)
				view2 = create(:view, exercise_id: main_exercise.prerequisites.second.id, user_id: user.id)

				expect(selector.prereqs_met?(main_exercise)).to be_truthy
			end
		end

		context "#filter_ineligible_exercises" do

			it "filters the exercises whose prerequsities have not been met", :focus do
				create_list(:exercise, 10)

				main_exercise.prerequisites << prerequisites.first
				main_exercise.prerequisites << prerequisites.second

				Exercise.first.prerequisites << Exercise.second

				view1 = create(:view, exercise_id: main_exercise.prerequisites.first.id, user_id: user.id)
				view2 = create(:view, exercise_id: main_exercise.prerequisites.second.id, user_id: user.id)	

				# binding.pry
				unfiltered_exercises = selector.filter_recent_views
				filtered_exercises = selector.filter_ineligible_exercises

				expect(filtered_exercises.length).to eq(unfiltered_exercises.length - 1)

			end
		end
	end

end