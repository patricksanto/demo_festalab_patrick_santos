# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

70.times do
  user = User.create!(
    name: Faker::Movies::HarryPotter.character,
    email: Faker::Internet.unique.email,
    phone: Faker::Number.number(digits: 11),
    cpf: Faker::IDNumber.brazilian_citizen_number
  )
  puts "Usuário #{user.name} criado com sucesso!"
end
