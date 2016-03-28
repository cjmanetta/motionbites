require 'rails_helper'

describe ExerciseSelector do
	let(:user) { create(:user_with_views)}
	let(:selector) { ExerciseSelector.new(user) }

	
	context "#filter_recent_views" do
		it "filters the recently viewed exercises out of the exercises eligable to be played" do
			create_list(:exercise, 10)
			unfiltered_exercises = Exercise.all
			filtered_exercises = selector.filter_recent_views

			expect(filtered_exercises.length).to eq(unfiltered_exercises.length - 3)
		end
	end

	context "prerequisites met filter" do
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

			it "filters the exercises whose prerequsities have not been met" do
				create_list(:exercise, 10)

				main_exercise.prerequisites << prerequisites.first
				main_exercise.prerequisites << prerequisites.second

				Exercise.first.prerequisites << Exercise.second

				view1 = create(:view, exercise_id: main_exercise.prerequisites.first.id, user_id: user.id)
				view2 = create(:view, exercise_id: main_exercise.prerequisites.second.id, user_id: user.id)	

				unfiltered_exercises_length = selector.filter_recent_views.length
				filtered_exercises = selector.filter_ineligible_exercises

				expect(filtered_exercises.length).to eq(unfiltered_exercises_length - 1)

			end
		end
	end

  context "#calculate_score" do
  	let(:exercise) { build(:exercise) }
  	let(:exercise2) { build(:exercise, balance: 4) }
    it "calculates the exercise score based on user and exercise data" do
      user.calculate_fitness_score

      expect(selector.calculate_score(exercise)).to eq(160)
    end
  end


  context "#collect" do
  	let(:selector) { ExerciseSelector.new(user) }

    it "collects the exercises' scores into a hash" do
  		exercises = create_list(:exercise, 10)
      
      user.calculate_fitness_score
      selector.filter_recent_views
      scores_hash = selector.collect
      first_score = selector.calculate_score(exercises[0]) + 0.001
			second_score = selector.calculate_score(exercises[1]) + 0.002

      expect(scores_hash).to include(exercises[0].id => first_score, exercises[1].id => second_score)
    end
  end

  context "#select_top_5" do 
  	let(:selector) { ExerciseSelector.new(user) }

  	it "selects the top 5 exercises from the hash" do
  		exercises = create_list(:exercise, 10)
      
      user.calculate_fitness_score
      selector.filter_recent_views
      scores_hash = selector.collect

      expect(selector.select_top_5(scores_hash)).to contain_exactly(exercises[-1].id, exercises[-2].id, exercises[-3].id, exercises[-4].id, exercises[-5].id)
  	end
  end

  context "#select", :focus do 
  	let(:selector) { ExerciseSelector.new(user) }

  	it "returns a random exercise to be played and then deletes it from the queue" do
  		exercises = create_list(:exercise, 10)
      user.calculate_fitness_score

  		selector.filter_recent_views

  		expect(selector.select).to be_an_instance_of(Exercise)

  	end
  end

end