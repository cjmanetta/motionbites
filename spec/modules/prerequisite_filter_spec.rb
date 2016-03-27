require 'rails_helper'

describe PrerequisiteFilter do
  let(:exercise) { create_list(:exercise, 10) }
  let(:user) { create(:user_with_views) }

  context "#prereq_met?" do

    

    it "returns false when the user history does not contain all of the prerequisites for an exercises" do
    	# exercise.prerequisites << push prereqs onto exercise maybe this needs to happen in a before bloc
      expect(prereq_met?(user, exercise)).to be_falsey
    end

    it "returns true when the user history contains all of the prerequisites for an exercises" do
    	# user.views << push exercise prereqs from before onto user view history

      expect(prereq_met?(user, exercise)).to be_truthy
    end
  end


end
