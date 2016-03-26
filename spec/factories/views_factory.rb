FactoryGirl.define do
  factory :view do
    user_id 1
    sequence(:exercise_id)
  end
end