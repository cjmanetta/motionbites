FactoryGirl.define do
  factory :view do
    user_id 1
    sequence(:exercise_id)

    factory :views_with_exercises do
        after(:create) do |view|
            create_list(:exercise, 1)
        end
    end
  end
end