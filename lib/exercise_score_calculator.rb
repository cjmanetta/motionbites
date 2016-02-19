module ExerciseScoreCalculator
  def self.calculate_score(user, exercise)
    score = 100

    ADJUSTMENT_TABLE.each_key do |exercise_attribute|
      adjustment = ADJUSTMENT_TABLE.fetch(exercise_attribute)[user.fitness_score - 1][exercise.send(exercise_attribute) - 1]
      score += adjustment
    end

    score
  end
end
