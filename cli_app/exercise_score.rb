class ExerciseScore
  attr_reader :score

  def initialize(user, exercise)
    @score = 100
    @user = user
    @exercise = exercise
  end

  def calculate_score
    ADJUSTMENT_TABLE.each_key do |attribute|
      adjustment = ADJUSTMENT_TABLE.fetch(attribute)[@user.fitness_score - 1][@exercise.instance_variable_get("@" + attribute.to_s) - 1]
      @score += adjustment
    end
    @score
  end

end