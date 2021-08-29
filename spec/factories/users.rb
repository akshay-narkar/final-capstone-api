FactoryBot.define do
  factory :user do
    name { 'Name' }
    email { 'foo@bar.com' }
    password { 'foobar' }
    password_confirmation { 'foobar' }
  end
end
