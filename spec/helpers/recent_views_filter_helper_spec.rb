require 'rails_helper'

describe RecentViewsFilterHelper, type: :helper do
	let(:user) { create(:user_with_views)}
	
 context "#filter_recent_views" do
 	it "filters the recently viewed exercises out of the exercises eligable to be played" do
 		create_list(:exercise, 10)
 		unfiltered_exercises = Exercise.all
 		filtered_exercises = filter_recent_views(user)
 		
 		expect(filtered_exercises.length).to eq(unfiltered_exercises.length - 3)
 	end
 end
end
