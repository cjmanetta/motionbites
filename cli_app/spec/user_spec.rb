require_relative '../user'

describe User do
  let(:user) { User.new({days_of_7_vig: 3,
                  mins_vig_per_day: 20,
                  days_of_7_mod: 2,
                  mins_mod_per_day: 30,
                  days_of_7_walk: 1,
                  mins_walk_per_day: 20,
                  mins_weekday_sitting: 550,
                  org_pa: true,
                  viewership_level: 1}) }

  context "#adjust_minutes" do
    it "normalizes user's reported activity per week data" do
      expect(user.adjust_minutes).to eq(196.62500000000003)
    end
  end

  context "#calculate_fitness_score" do
    it "calculates the user's fitness score" do
      expect(user.calculate_fitness_score).to eq(3)
    end
  end
end