require_relative '../user'
require_relative '../exercise'
require_relative '../exercise_score'
require_relative '../adjustment_table'

describe ExerciseScore do
  let(:exercise) { Exercise.new({exertion: 3,
                                 balance: 3,
                                 flexibility: 1,
                                 strength: 3,
                                 technicality: 3}) }
  let(:user) { User.new({days_of_7_vig: 3,
                  mins_vig_per_day: 20,
                  days_of_7_mod: 2,
                  mins_mod_per_day: 30,
                  days_of_7_walk: 1,
                  mins_walk_per_day: 20,
                  mins_weekday_sitting: 550,
                  org_pa: true,
                  viewership_level: 1}) }
  let(:exercise_score) { ExerciseScore.new(user, exercise) }

  it "has a default score of 100" do
    expect(exercise_score.score).to eq(100)
  end

  context "#calculate_score" do
    it "calculates the score of the exercise adjusted by the current user's attributes" do
      expect(exercise_score.calculate_score).to eq(150)

    end
  end
end
