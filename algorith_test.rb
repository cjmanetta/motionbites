

class User
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
  end

  def adjusted_minutes
    if @viewership_level == 1
      vlevel_mult = 1.1
    elsif @viewership_level == 2
      vlevel_mult = 1.2
    elsif @viewership_level == 3
      vlevel_mult = 1.3
    elsif @viewership_level == 4
      vlevel_mult = 1.4
    elsif @viewership_level == 5
      vlevel_mult = 1.5
    end

    mins_vig_per_week = (@days_of_7_vig*@mins_vig_per_day)*1.75
    mins_mod_per_week = (@days_of_7_mod*@mins_mod_per_day)*1.5
    mins_walk_per_week = (@days_of_7_walk*@mins_walk_per_day)
    sit_penalty = @mins_weekday_sitting*0.075

    (mins_vig_per_week + mins_mod_per_week + mins_walk_per_week - sit_penalty)*vlevel_mult
  end

  def calculate_fitness_score
    case adjusted_minutes
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

user = User.new({mins_vig_per_day: 20, days_of_7_vig: 5, days_of_7_mod: 2, mins_mod_per_day: 30, days_of_7_walk: 2, mins_walk_per_day: 20, mins_weekday_sitting: 550, org_pa: true, viewership_level: 1})
p user.calculate_fitness_score # => 5

# user2 = User.new(5, 90, 2, 30, 2, 20, 550, true, 1)
#   p user2.calculate_fitness_score # => 7

# user3 = User.new(5, 20, 2, 30, 2, 20, 550, false, 1)
#   p user3.calculate_fitness_score # => 4

class Exercise
  def initialize(args = {})
    @exertion = args[:exertion]
    @balance = args[:balance]
    @strength = args[:strength]
    @flexibility = args[:flexibility]
    @technicality = args[:technicality]
    @starting_score = 100
  end

end

p neck_roll = Exercise.new({exertion: 1, balance: 1, flexibility: 3, strength: 1, technicality: 1})

p chair_pose_cycle = Exercise.new({exertion: 3, balance: 3, flexibility: 1, strength: 3, technicality: 3})

p crane_stance = Exercise.new({exertion: 3, balance: 4, flexibility: 2, strength: 2, technicality: 3})

def