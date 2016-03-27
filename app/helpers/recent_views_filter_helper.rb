module RecentViewsFilterHelper
	def filter_recent_views(user)
 		exercise_id_set = []
 		user.recent_views(3).each {|view|  exercise_id_set << view.exercise_id}
		Exercise.all - Exercise.all.where(id: exercise_id_set)   
  end
end
