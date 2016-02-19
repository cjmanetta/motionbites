FactoryGirl.define do
  factory :user do
    first_name "Mic"
    last_name  "Jagger"
    email { "#{first_name.first.downcase}#{last_name.downcase}@example.com" }
    birthdate "1969-11-03"
    admin false
    password_digest "password"
    days_of_7_vig 3
    mins_vig_per_day 20
    days_of_7_mod 2
    mins_mod_per_day 30
    days_of_7_walk 1
    mins_walk_per_day 20
    mins_weekday_sitting 550
    org_pa true
    viewership_level 1
  end
end