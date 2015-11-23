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


