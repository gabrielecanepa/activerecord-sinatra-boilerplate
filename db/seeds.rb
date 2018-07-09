require 'faker'

10.times do
  Restaurant.create(name: "The #{Faker::Food.dish}", address: Faker::Address.full_address)
end
