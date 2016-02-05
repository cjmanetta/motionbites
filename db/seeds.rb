require 'CSV'

18.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "1234",
    birthdate: "1984-11-24",
    basic_start: false)
end

User.third.update_attribute(:basic_start, true)

User.find(1).update_attribute(:days_of_7_vig, 0)
User.find(1).update_attribute(:mins_vig_per_day, 0)
User.find(1).update_attribute(:days_of_7_mod, 0)
User.find(1).update_attribute(:mins_mod_per_day, 0)
User.find(1).update_attribute(:days_of_7_walk, 0)
User.find(1).update_attribute(:mins_walk_per_day, 0)
User.find(1).update_attribute(:mins_weekday_sitting, 0)

User.find(2).update_attribute(:days_of_7_vig, 0)
User.find(2).update_attribute(:mins_vig_per_day, 0)
User.find(2).update_attribute(:days_of_7_mod, 3)
User.find(2).update_attribute(:mins_mod_per_day, 30)
User.find(2).update_attribute(:days_of_7_walk, 4)
User.find(2).update_attribute(:mins_walk_per_day, 40)
User.find(2).update_attribute(:mins_weekday_sitting, 400)

User.find(3).update_attribute(:days_of_7_vig, 2)
User.find(3).update_attribute(:mins_vig_per_day, 40)
User.find(3).update_attribute(:days_of_7_mod, 3)
User.find(3).update_attribute(:mins_mod_per_day, 60)
User.find(3).update_attribute(:days_of_7_walk, 2)
User.find(3).update_attribute(:mins_walk_per_day, 20)
User.find(3).update_attribute(:mins_weekday_sitting, 350)

User.find(4).update_attribute(:days_of_7_vig, 0)
User.find(4).update_attribute(:mins_vig_per_day, 0)
User.find(4).update_attribute(:days_of_7_mod, 0)
User.find(4).update_attribute(:mins_mod_per_day, 0)
User.find(4).update_attribute(:days_of_7_walk, 3)
User.find(4).update_attribute(:mins_walk_per_day, 20)
User.find(4).update_attribute(:mins_weekday_sitting, 600)

User.find(5).update_attribute(:days_of_7_vig, 1)
User.find(5).update_attribute(:mins_vig_per_day, 30)
User.find(5).update_attribute(:days_of_7_mod, 4)
User.find(5).update_attribute(:mins_mod_per_day, 60)
User.find(5).update_attribute(:days_of_7_walk, 3)
User.find(5).update_attribute(:mins_walk_per_day, 40)
User.find(5).update_attribute(:mins_weekday_sitting, 500)

User.find(6).update_attribute(:days_of_7_vig, 0)
User.find(6).update_attribute(:mins_vig_per_day, 0)
User.find(6).update_attribute(:days_of_7_mod, 2)
User.find(6).update_attribute(:mins_mod_per_day, 30)
User.find(6).update_attribute(:days_of_7_walk, 5)
User.find(6).update_attribute(:mins_walk_per_day, 60)
User.find(6).update_attribute(:mins_weekday_sitting, 700)

User.find(7).update_attribute(:days_of_7_vig, 0)
User.find(7).update_attribute(:mins_vig_per_day, 0)
User.find(7).update_attribute(:days_of_7_mod, 2)
User.find(7).update_attribute(:mins_mod_per_day, 30)
User.find(7).update_attribute(:days_of_7_walk, 2)
User.find(7).update_attribute(:mins_walk_per_day, 20)
User.find(7).update_attribute(:mins_weekday_sitting, 550)

User.find(8).update_attribute(:days_of_7_vig, 0)
User.find(8).update_attribute(:mins_vig_per_day, 0)
User.find(8).update_attribute(:days_of_7_mod, 0)
User.find(8).update_attribute(:mins_mod_per_day, 0)
User.find(8).update_attribute(:days_of_7_walk, 0)
User.find(8).update_attribute(:mins_walk_per_day, 0)
User.find(8).update_attribute(:mins_weekday_sitting, 800)

User.find(9).update_attribute(:days_of_7_vig, 0)
User.find(9).update_attribute(:mins_vig_per_day, 0)
User.find(9).update_attribute(:days_of_7_mod, 2)
User.find(9).update_attribute(:mins_mod_per_day, 40)
User.find(9).update_attribute(:days_of_7_walk, 4)
User.find(9).update_attribute(:mins_walk_per_day, 30)
User.find(9).update_attribute(:mins_weekday_sitting, 650)

User.find(10).update_attribute(:days_of_7_vig, 2)
User.find(10).update_attribute(:mins_vig_per_day, 40)
User.find(10).update_attribute(:days_of_7_mod, 2)
User.find(10).update_attribute(:mins_mod_per_day, 60)
User.find(10).update_attribute(:days_of_7_walk, 3)
User.find(10).update_attribute(:mins_walk_per_day, 30)
User.find(10).update_attribute(:mins_weekday_sitting, 400)

User.find(11).update_attribute(:days_of_7_vig, 1)
User.find(11).update_attribute(:mins_vig_per_day, 40)
User.find(11).update_attribute(:days_of_7_mod, 5)
User.find(11).update_attribute(:mins_mod_per_day, 60)
User.find(11).update_attribute(:days_of_7_walk, 1)
User.find(11).update_attribute(:mins_walk_per_day, 120)
User.find(11).update_attribute(:mins_weekday_sitting, 880)

User.find(12).update_attribute(:days_of_7_vig, 0)
User.find(12).update_attribute(:mins_vig_per_day, 0)
User.find(12).update_attribute(:days_of_7_mod, 2)
User.find(12).update_attribute(:mins_mod_per_day, 60)
User.find(12).update_attribute(:days_of_7_walk, 2)
User.find(12).update_attribute(:mins_walk_per_day, 50)
User.find(12).update_attribute(:mins_weekday_sitting, 700)

User.find(13).update_attribute(:days_of_7_vig, 0)
User.find(13).update_attribute(:mins_vig_per_day, 0)
User.find(13).update_attribute(:days_of_7_mod, 0)
User.find(13).update_attribute(:mins_mod_per_day, 0)
User.find(13).update_attribute(:days_of_7_walk, 1)
User.find(13).update_attribute(:mins_walk_per_day, 30)
User.find(13).update_attribute(:mins_weekday_sitting, 1100)

User.find(14).update_attribute(:days_of_7_vig, 0)
User.find(14).update_attribute(:mins_vig_per_day, 0)
User.find(14).update_attribute(:days_of_7_mod, 4)
User.find(14).update_attribute(:mins_mod_per_day, 40)
User.find(14).update_attribute(:days_of_7_walk, 4)
User.find(14).update_attribute(:mins_walk_per_day, 60)
User.find(14).update_attribute(:mins_weekday_sitting, 550)

User.find(15).update_attribute(:days_of_7_vig, 0)
User.find(15).update_attribute(:mins_vig_per_day, 0)
User.find(15).update_attribute(:days_of_7_mod, 2)
User.find(15).update_attribute(:mins_mod_per_day, 60)
User.find(15).update_attribute(:days_of_7_walk, 5)
User.find(15).update_attribute(:mins_walk_per_day, 40)
User.find(15).update_attribute(:mins_weekday_sitting, 850)

User.find(16).update_attribute(:days_of_7_vig, 0)
User.find(16).update_attribute(:mins_vig_per_day, 0)
User.find(16).update_attribute(:days_of_7_mod, 3)
User.find(16).update_attribute(:mins_mod_per_day, 30)
User.find(16).update_attribute(:days_of_7_walk, 3)
User.find(16).update_attribute(:mins_walk_per_day, 60)
User.find(16).update_attribute(:mins_weekday_sitting, 750)

User.find(17).update_attribute(:days_of_7_vig, 3)
User.find(17).update_attribute(:mins_vig_per_day, 40)
User.find(17).update_attribute(:days_of_7_mod, 4)
User.find(17).update_attribute(:mins_mod_per_day, 60)
User.find(17).update_attribute(:days_of_7_walk, 1)
User.find(17).update_attribute(:mins_walk_per_day, 20)
User.find(17).update_attribute(:mins_weekday_sitting, 950)

User.find(18).update_attribute(:days_of_7_vig, 0)
User.find(18).update_attribute(:mins_vig_per_day, 0)
User.find(18).update_attribute(:days_of_7_mod, 0)
User.find(18).update_attribute(:mins_mod_per_day, 0)
User.find(18).update_attribute(:days_of_7_walk, 2)
User.find(18).update_attribute(:mins_walk_per_day, 60)
User.find(18).update_attribute(:mins_weekday_sitting, 1000)

User.create(
  first_name: "Peter",
  last_name: "Manetta",
  email: "pmanetta@gmail.com",
  admin: true,
  password: "1234",
  birthdate: "1984-11-24",
  basic_start: false)

User.create(
  first_name: "Charlotte",
  last_name: "Manetta",
  email: "cjmanetta@gmail.com",
  admin: true,
  password: "1234",
  birthdate: "1984-11-24",
  basic_start: false)


CSV.foreach("db/exercises.csv", {headers: true, header_converters: :symbol}) do |row|
  Exercise.create({
    name: row[:name],
    legacy_id: row[:legacy_id],
    legacy_prereqs: row[:legacy_prereqs],
    description: row[:description],
    exertion: row[:exertion],
    technicality: row[:technicality],
    equipment: nil,
    flexibility: row[:flexibility],
    balance: row[:balance],
    strength: row[:strength],
    breathing: row[:breathing],
    muscle_1: row[:muscle_1],
    muscle_2: row[:muscle_2],
    muscle_3: row[:muscle_3],
    muscle_stretched: row[:muscle_stretched],
    origin: row[:origin]})
end