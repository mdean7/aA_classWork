require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


names = ["Angela Buck", "Orlando Logan", "Margene Montgomery", "Hunter Watson", "Chasity Bowman", "Myrle Atkinson", "Darby Buck", "Dwight Mcbride", "Yuko Roman", "Lera Fletcher", "Jeremy Brandt", "Gertie Peck", "Vicente Santana", "Annalisa Mcbride", "Lois Brandt", "Hassie Bryan", "Ezekiel Swanson", "Genie Roman", "Tanna Logan", "Anja Melendez", "Nanci Mcbride", "Lorena Schroeder", "Carl Byrd", "Glinda Byrd", "Laura Buck"]

colors = %w(White Black Red Ginger Blue Grey Cream Brown Cinnamon Fawn)

sexes = %w(M F)


names.each do |name|
    Cat.create(name: name, birthdate: Faker::Date.between(from: '1900-01-01', to: '2021-02-26'), color: colors.sample, sex: sexes.sample)
end