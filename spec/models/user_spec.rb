require 'rails_helper'

describe User, :focus do
  let(:user) {FactoryGirl.build(:user)}

  it "is valid" do
    expect(user).to be_valid
  end

  it "is invalid if first name, last name, email, password or birthdate are not present" do
    user.first_name = nil
    expect(user).to be_invalid
  end

  it "is invalid if a user is under 18" do
    user.birthdate = "2013-11-24"
    expect(user).to be_invalid
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

end
