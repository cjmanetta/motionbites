18.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "1234",
    age: (30..65).to_a.sample,
    basic_start: false)
end

User.third.basic_start = true

User.find(1).days_of_7_vig = 0
User.find(1).mins_vig_per_day = 0
User.find(1).days_of_7_mod = 0
User.find(1).mins_mod_per_day = 0
User.find(1).days_of_7_walk = 0
User.find(1).mins_walk_per_day = 0
User.find(1).mins_weekday_sitting = 0

User.find(2).days_of_7_vig = 0
User.find(2).mins_vig_per_day = 0
User.find(2).days_of_7_mod = 0
User.find(2).mins_mod_per_day = 0
User.find(2).days_of_7_walk = 0
User.find(2).mins_walk_per_day = 0
User.find(2).mins_weekday_sitting = 0

User.find(3).days_of_7_vig = 0
User.find(3).mins_vig_per_day = 0
User.find(3).days_of_7_mod = 0
User.find(3).mins_mod_per_day = 0
User.find(3).days_of_7_walk = 0
User.find(3).mins_walk_per_day = 0
User.find(3).mins_weekday_sitting = 0

User.find(4).days_of_7_vig = 0
User.find(4).mins_vig_per_day = 0
User.find(4).days_of_7_mod = 0
User.find(4).mins_mod_per_day = 0
User.find(4).days_of_7_walk = 0
User.find(4).mins_walk_per_day = 0
User.find(4).mins_weekday_sitting = 0

User.find(5).days_of_7_vig = 0
User.find(5).mins_vig_per_day = 0
User.find(5).days_of_7_mod = 0
User.find(5).mins_mod_per_day = 0
User.find(5).days_of_7_walk = 0
User.find(5).mins_walk_per_day = 0
User.find(5).mins_weekday_sitting = 0

User.find(6).days_of_7_vig = 0
User.find(6).mins_vig_per_day = 0
User.find(6).days_of_7_mod = 0
User.find(6).mins_mod_per_day = 0
User.find(6).days_of_7_walk = 0
User.find(6).mins_walk_per_day = 0
User.find(6).mins_weekday_sitting = 0

User.find(7).days_of_7_vig = 0
User.find(7).mins_vig_per_day = 0
User.find(7).days_of_7_mod = 0
User.find(7).mins_mod_per_day = 0
User.find(7).days_of_7_walk = 0
User.find(7).mins_walk_per_day = 0
User.find(7).mins_weekday_sitting = 0

User.find(8).days_of_7_vig = 0
User.find(8).mins_vig_per_day = 0
User.find(8).days_of_7_mod = 0
User.find(8).mins_mod_per_day = 0
User.find(8).days_of_7_walk = 0
User.find(8).mins_walk_per_day = 0
User.find(8).mins_weekday_sitting = 0

User.find(9).days_of_7_vig = 0
User.find(9).mins_vig_per_day = 0
User.find(9).days_of_7_mod = 0
User.find(9).mins_mod_per_day = 0
User.find(9).days_of_7_walk = 0
User.find(9).mins_walk_per_day = 0
User.find(9).mins_weekday_sitting = 0

User.find(10).days_of_7_vig = 0
User.find(10).mins_vig_per_day = 0
User.find(10).days_of_7_mod = 0
User.find(10).mins_mod_per_day = 0
User.find(10).days_of_7_walk = 0
User.find(10).mins_walk_per_day = 0
User.find(10).mins_weekday_sitting = 0

User.find(11).days_of_7_vig = 0
User.find(11).mins_vig_per_day = 0
User.find(11).days_of_7_mod = 0
User.find(11).mins_mod_per_day = 0
User.find(11).days_of_7_walk = 0
User.find(11).mins_walk_per_day = 0
User.find(11).mins_weekday_sitting = 0

User.find(12).days_of_7_vig = 0
User.find(12).mins_vig_per_day = 0
User.find(12).days_of_7_mod = 0
User.find(12).mins_mod_per_day = 0
User.find(12).days_of_7_walk = 0
User.find(12).mins_walk_per_day = 0
User.find(12).mins_weekday_sitting = 0

User.find(13).days_of_7_vig = 0
User.find(13).mins_vig_per_day = 0
User.find(13).days_of_7_mod = 0
User.find(13).mins_mod_per_day = 0
User.find(13).days_of_7_walk = 0
User.find(13).mins_walk_per_day = 0
User.find(13).mins_weekday_sitting = 0

User.find(14).days_of_7_vig = 0
User.find(14).mins_vig_per_day = 0
User.find(14).days_of_7_mod = 0
User.find(14).mins_mod_per_day = 0
User.find(14).days_of_7_walk = 0
User.find(14).mins_walk_per_day = 0
User.find(14).mins_weekday_sitting = 0

User.find(15).days_of_7_vig = 0
User.find(15).mins_vig_per_day = 0
User.find(15).days_of_7_mod = 0
User.find(15).mins_mod_per_day = 0
User.find(15).days_of_7_walk = 0
User.find(15).mins_walk_per_day = 0
User.find(15).mins_weekday_sitting = 0

User.find(16).days_of_7_vig = 0
User.find(16).mins_vig_per_day = 0
User.find(16).days_of_7_mod = 0
User.find(16).mins_mod_per_day = 0
User.find(16).days_of_7_walk = 0
User.find(16).mins_walk_per_day = 0
User.find(16).mins_weekday_sitting = 0

User.find(17).days_of_7_vig = 0
User.find(17).mins_vig_per_day = 0
User.find(17).days_of_7_mod = 0
User.find(17).mins_mod_per_day = 0
User.find(17).days_of_7_walk = 0
User.find(17).mins_walk_per_day = 0
User.find(17).mins_weekday_sitting = 0

User.find(18).days_of_7_vig = 0
User.find(18).mins_vig_per_day = 0
User.find(18).days_of_7_mod = 0
User.find(18).mins_mod_per_day = 0
User.find(18).days_of_7_walk = 0
User.find(18).mins_walk_per_day = 0
User.find(18).mins_weekday_sitting = 0

User.create(
  first_name: "Peter",
  last_name: "Manetta",
  email: "pmanetta@gmail.com",
  admin: true,
  password: "1234",
  age: 35,
  basic_start: false)

User.create(
  first_name: "Charlotte",
  last_name: "Manetta",
  email: "cjmanetta@gmail.com",
  admin: true,
  password: "1234",
  age: 31,
  basic_start: false)


