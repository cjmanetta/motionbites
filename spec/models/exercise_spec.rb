require 'rails_helper'

describe Exercise, :focus do
  let(:exercise) {FactoryGirl.build(:exercise)}

  it "is valid with a name and exertion, technicality, flexibility, balance and strength scores" do
    expect(exercise).to be_valid
  end

  it "is invalid without a name" do
    exercise.name = nil
    expect(exercise).to be_invalid
  end

  it "is invalid if any of the exertion, technicality, flexibility, balance and strength scores are not between 1 and 5" do
    exercise.exertion = 8
    expect(exercise).to be_invalid
  end

  pending "add instance method tests if there are any instance methods"

end
