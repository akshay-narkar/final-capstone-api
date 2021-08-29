FactoryBot.define do
  factory :course do
    name { Faker::Superhero.power }
    domain { Faker::Superhero.descriptor }
    teacher_name { Faker::Superhero.name }
    rating { 5 }
    fee do
      25
    end
  end
end
