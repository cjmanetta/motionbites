require_relative 'adjustment_table'
require_relative 'exercise'
require_relative 'user'
require_relative 'exercise_score'

neck_roll = Exercise.new({exertion: 1,
                          balance: 1,
                          flexibility: 3,
                          strength: 1,
                          technicality: 1})

peter = User.new({days_of_7_vig: 5,
                  mins_vig_per_day: 20,
                  days_of_7_mod: 2,
                  mins_mod_per_day: 30,
                  days_of_7_walk: 2,
                  mins_walk_per_day: 20,
                  mins_weekday_sitting: 550,
                  org_pa: true,
                  viewership_level: 1})

interaction = ExerciseScore.new(peter, neck_roll)

p interaction.calculate_score


# other exercises

chair_pose_cycle = Exercise.new({exertion: 3,
                                 balance: 3,
                                 flexibility: 1,
                                 strength: 3,
                                 technicality: 3})

crane_stance = Exercise.new({exertion: 3,
                             balance: 4,
                             flexibility: 2,
                             strength: 2,
                             technicality: 3})

# other users
charlotte = User.new({days_of_7_vig: 2,
                  mins_vig_per_day: 40,
                  days_of_7_mod: 3,
                  mins_mod_per_day: 30,
                  days_of_7_walk: 5,
                  mins_walk_per_day: 30,
                  mins_weekday_sitting: 900,
                  org_pa: true,
                  viewership_level: 1})
charlotte.fitness_score # =>


jacobo = User.new({days_of_7_vig: 0,
                   mins_vig_per_day: 0,
                   days_of_7_mod: 3,
                   mins_mod_per_day: 40,
                   days_of_7_walk: 3,
                   mins_walk_per_day: 40,
                   mins_weekday_sitting: 800,
                   org_pa: false,
                   viewership_level: 1})
jacobo.fitness_score # =>