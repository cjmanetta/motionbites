require 'rails_helper'
# require 'prerequisite_filter'

describe PrerequisiteFilter do
  let(:main_exercise) { create(:exercise)  }
  let(:prerequisites) { create_list(:exercise, 2)  }
  let(:user) { create(:user) }
  before(:each) do
    main_exercise.prerequisites << prerequisites
  end

  context "#prereqs_met?" do
    it "returns false when the user history does not contain all of the prerequisites for an exercises" do
    	
      expect(PrerequisiteFilter.prereq_met?(user, main_exercise)).to be_falsey
    end

    it "returns true when the user history contains all of the prerequisites for an exercises", :focus do
    	view1 = create(:view, exercise_id: main_exercise.prerequisites.first.id, user_id: user.id)
  		view2 = create(:view, exercise_id: main_exercise.prerequisites.second.id, user_id: user.id)

  	p	View.where(exercise_id: main_exercise.prerequisites.first.id)

  
      expect(PrerequisiteFilter.prereqs_met?(user, main_exercise)).to be_truthy
    end
  end


end
