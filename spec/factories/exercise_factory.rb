FactoryGirl.define do
  factory :exercise do
    sequence(:name) {|n| "Exercise #{n}" }
    exertion  1
    balance 1
    flexibility 3
    strength 1
    technicality 1
  end
end
