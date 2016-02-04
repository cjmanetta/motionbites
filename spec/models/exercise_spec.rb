require 'rails_helper'

describe Exercise do
  let(:exercise) {FactoryGirl.build(:exercise)}

  it "is valid with a name and exertion, technicality, flexibility, balance and strength scores" do
    expect(exercise).to be_valid
  end
  it "is invalid without a name"
  it "is invalid without an exertion score"
  it "is invalid without a technicality score"
  it "is invalid without a flexibility score"
  it "is invalid without a balance score"
  it "is invalid without a strength score"
end
