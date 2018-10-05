FactoryBot.define do
  factory :cup do
    color { 'Red' }

    trait :smiley do
      name { 'Smiley Cup' }
    end

    trait :angry do
      name { 'Angry Cup' }
    end
  end
end
