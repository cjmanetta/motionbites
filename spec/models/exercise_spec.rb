require 'rails_helper'

describe Exercise, :focus do
  let(:exercise) {FactoryGirl.build(:exercise)}

  context "is valid" do
    it { expect(exercise).to validate_presence_of(:name) }
    it { expect(exercise).to validate_presence_of(:exertion) }
    it { expect(exercise).to validate_presence_of(:technicality) }
    it { expect(exercise).to validate_presence_of(:balance) }
    it { expect(exercise).to validate_presence_of(:strength) }

    it { expect(exercise).to validate_inclusion_of(:exertion).in_range 1..5 }
    it { expect(exercise).to validate_inclusion_of(:technicality).in_range 1..5 }
    it { expect(exercise).to validate_inclusion_of(:balance).in_range 1..5 }
    it { expect(exercise).to validate_inclusion_of(:strength).in_range 1..5 }
  end

  context "has valid associations" do
    it { expect(exercise).to have_many :views}
    it { expect(exercise).to have_many(:users).through :views}
    it { expect(exercise).to have_many(:prerequisites).through :prerequisiteships}
  end

end
