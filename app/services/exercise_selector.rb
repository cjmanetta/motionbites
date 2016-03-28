class ExerciseSelector
	def initialize(user)
		@user = user
		@exercises = filter_recent_views
	end

	def select	
		queue ||= return_top_5(collect)
		pick = queue.sample
		queue.delete(pick)	
	end

	def select_top_5(hash)
		slice = hash.values.sort! {|a, b| b <=> a }.slice(0...5)
		hash.keep_if do |key, value|
			slice.include?(value)
		end
		hash.keys
	end


	def collect
		filter_ineligible_exercises
		scores_hash = {}
		@exercises.each do |exercise|
			scores_hash[exercise.id] = calculate_score(exercise)
		end
		scores_hash
	end

	def filter_recent_views
		rejections = []
		@user.recent_views(3).each {|view| rejections << view.exercise_id}
		Exercise.all - Exercise.all.where(id: rejections)   
	end

	def filter_ineligible_exercises
		@exercises.delete_if {|exercise| !prereqs_met?(exercise)} 
	end

	def prereqs_met?(exercise)
		exercise.prerequisites.all? do |prereq|
			@user.views.include?(View.find_by(exercise_id: prereq.id))
		end 	
	end

	def calculate_score(exercise)
		score = 100
		uniqueness_incrementer = 0.001
		ADJUSTMENT_TABLE.each_key do |exercise_attribute|
			adjustment = ADJUSTMENT_TABLE.fetch(exercise_attribute)[@user.fitness_score - 1][exercise.send(exercise_attribute) - 1]
			score += adjustment
		end
		score += uniqueness_incrementer
		uniqueness_incrementer += 0.001
		score
	end

end