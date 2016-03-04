require 'rails_helper'

describe View do
  let(:view) {build(:view)}

  context "it has valid associations" do
    it {expect(view).to belong_to :user}
    it {expect(view).to belong_to :exercise}
  end
end
