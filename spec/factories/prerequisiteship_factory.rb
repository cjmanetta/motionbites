FactoryGirl.define do
  factory :prerequisiteship do
    sequence(:exercise_id)
    sequence(:prerequisite_id)
  end
end