class User
  attr_reader :fitness_score

  def initialize(args = {})
    @days_of_7_vig = args[:days_of_7_vig]
    @mins_vig_per_day = args[:mins_vig_per_day]
    @days_of_7_mod = args[:days_of_7_mod]
    @mins_mod_per_day = args[:mins_mod_per_day]
    @days_of_7_walk = args[:days_of_7_walk]
    @mins_walk_per_day = args[:mins_walk_per_day]
    @mins_weekday_sitting = args[:mins_weekday_sitting]
    @org_pa = args[:org_pa]
    @viewership_level = args[:viewership_level]
    @fitness_score = calculate_fitness_score
  end

  def adjust_minutes
    case @viewership_level
    when 1
      vlevel_mult = 1.1
    when 2
      vlevel_mult = 1.2
    when 3
      vlevel_mult = 1.3
    when 4
      vlevel_mult = 1.4
    when 5
      vlevel_mult = 1.5
    end

    mins_vig_per_week = (@days_of_7_vig * @mins_vig_per_day) * 1.75
    mins_mod_per_week = (@days_of_7_mod * @mins_mod_per_day) * 1.5
    mins_walk_per_week = (@days_of_7_walk * @mins_walk_per_day) * 1.25
    sit_penalty = @mins_weekday_sitting * 0.075

    (mins_vig_per_week + mins_mod_per_week + mins_walk_per_week - sit_penalty) * vlevel_mult
  end

  def calculate_fitness_score
    case adjust_minutes
    when 0..100
      fitness_score = 1
    when 101..200
      fitness_score = 2
    when 201..250
      fitness_score = 3
    when 251..300
      fitness_score = 4
    when 301..350
      fitness_score = 5
    when 351..500
      fitness_score = 6
    else
      fitness_score = 7
    end

    if @org_pa && fitness_score != 7
      fitness_score + 1
    else
      fitness_score
    end
  end
end
