

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

user1 = User.new({days_of_7_vig: 5, mins_vig_per_day: 20,  days_of_7_mod: 2, mins_mod_per_day: 30, days_of_7_walk: 2, mins_walk_per_day: 20, mins_weekday_sitting: 550, org_pa: true, viewership_level: 1})
 user1.calculate_fitness_score # => 5

 user2 = User.new({days_of_7_vig: 2, mins_vig_per_day: 40, days_of_7_mod: 3, mins_mod_per_day: 30, days_of_7_walk: 5, mins_walk_per_day: 30, mins_weekday_sitting: 900, org_pa: true, viewership_level: 1})
 user2.calculate_fitness_score # =>


 user3 = User.new({days_of_7_vig: 0, mins_vig_per_day: 0, days_of_7_mod: 3, mins_mod_per_day: 40, days_of_7_walk: 3, mins_walk_per_day: 40, mins_weekday_sitting: 800, org_pa: false, viewership_level: 1})
 user3.calculate_fitness_score # =>

 class Exercise
  def initialize(args = {})
    @exertion = args[:exertion]
    @balance = args[:balance]
    @strength = args[:strength]
    @flexibility = args[:flexibility]
    @technicality = args[:technicality]
    @fitness_score = args[:fitness_score]
    @starting_score = 100
  end
  def adjust_start_score
    if @fitness_score == 1
      case @exertion
      when 1
        p @starting_score += 30
        p @starting_score
      when 2
        @starting_score += 10
      when 3
        @starting_score
      when 4
        @starting_score -= 10
      when 5
        @starting_score -= 20
      else
        @starting_score
      end
    elsif @fitness_score == 2
      p @fitness_score
    elsif @fitness_score == 3
      p @fitness_score
    elsif @fitness_score == 4
      p @fitness_score
    elsif @fitness_score == 5
      p @fitness_score
    elsif @fitness_score == 6
      p @fitness_score
    elsif @fitness_score == 7
      p @fitness_score
    end




    # ##case exertion_adj_fs1
    # when fitness_score = 1 && @exertion = 1
    #   @starting_score + 30
    # when fitness_score = 1 && @exertion = 2
    #   @starting_score + 10
    # when fitness_score = 1 && @exertion = 3
    #   @starting_score
    # when fitness_score = 1 && @exertion = 4
    #   @starting_score - 10
    # when fitness_score = 1 && @exertion = 5
    #   @starting_score - 20
    # else
    #   @starting_score
    # end

    # case exertion_adj_fs2
    # when fitness_score = 2 && @exertion = 1
    #   @starting_score + 20
    # when fitness_score = 2 && @exertion = 2
    #   @starting_score + 15
    # when fitness_score = 2 && @exertion = 3
    #   @starting_score + 5
    # when fitness_score = 2 && @exertion = 4
    #   @starting_score - 10
    # when fitness_score = 2 && @exertion = 5
    #   @starting_score - 20
    # else
    #   @starting_score
    # end

    # case exertion_adj_fs3
    # when fitness_score = 3 && @exertion = 1
    #   @starting_score + 20
    # when fitness_score = 3 && @exertion = 2
    #   @starting_score + 10
    # when fitness_score = 3 && @exertion = 3
    #   @starting_score + 5
    # when fitness_score = 3 && @exertion = 4
    #   @starting_score - 5
    # when fitness_score = 3 && @exertion = 5
    #   @starting_score - 20
    # else
    #   @starting_score
    # end
  end
end

p neck_roll = Exercise.new({fitness_score: 1, exertion: 1, balance: 1, flexibility: 3, strength: 1, technicality: 1})
neck_roll.adjust_start_score

# p neck_roll = Exercise.new({fitness_score: 4, exertion: 1, balance: 1, flexibility: 3, strength: 1, technicality: 1})
# neck_roll.adjust_start_score

# p chair_pose_cycle = Exercise.new({exertion: 3, balance: 3, flexibility: 1, strength: 3, technicality: 3})

# p crane_stance = Exercise.new({exertion: 3, balance: 4, flexibility: 2, strength: 2, technicality: 3})

