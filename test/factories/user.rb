FactoryBot.define do
    factory :user do
        name { "Anonimo" }
        sequence(:email) { |n| "anonimo#{n}@mail.com" }
        password { "123456" }
        password_confirmation { "123456" }
    end
end