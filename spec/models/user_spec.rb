require 'rails_helper'

describe User do
  let(:user) { create(:user) }

  context "is valid" do
    it { expect(user).to validate_presence_of(:first_name) }
    it { expect(user).to validate_presence_of(:last_name) }
    it { expect(user).to validate_presence_of(:email) }

    it "is invalid if a user is under 18" do
      p user
      user.birthdate = "2013-11-24"
      expect(user).to be_invalid
    end
  end

  context "has valid associations" do
    it { should have_many(:views) }
    it { should have_many(:exercises).through(:views) }

  end

  context "#adjust_minutes" do
    it "normalizes user's reported activity per week data" do
      expect(user.adjust_minutes).to eq(196.62500000000003)
    end
  end

  context "#calculate_fitness_score" do
    it "calculates the user's fitness score and assign it the fitness_score attribute" do
      user.calculate_fitness_score
      expect(user.fitness_score).to eq(3)
    end
  end

  context "#last_three" do
    let(:user_with_views) {create(:user_with_views)}
    it "finds the last three views in viewer history" do
      expect(user_with_views.last_three_views).to contain_exactly(user_with_views.views[-1], user_with_views.views[-2], user_with_views.views[-3])
      
    end
  end

end
