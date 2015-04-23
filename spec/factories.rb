FactoryGirl.define do
  factory :user do
    sequence(:name)   { |n| "utopia #{n}" }
    sequence(:email)  { |n| "utopia_#{n}@example.com" }
    password "foobar"
    password_confirmation "foobar"
    factory :admin do
      admin true
    end
  end
end
