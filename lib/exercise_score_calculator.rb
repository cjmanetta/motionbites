module ExerciseScoreCalculator
  def calculate_score(user, exercise)
    ADJUSTMENT_TABLE.each_key do |exercise_attribute|
      adjustment = ADJUSTMENT_TABLE.fetch(exercise_attribute)[user.fitness_score - 1][exercise.instance_variable_get(exercise_attribute.to_s) - 1]
      score += adjustment
    end
    score
  end
end

# try to figure outhow to get the attribute name from the active record model