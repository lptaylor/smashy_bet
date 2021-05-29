# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Fighter.delete_all
#now build up an array
fighters = [
  {name:'testname', character:'testmario', tier: 'C'},
  {name:'testname', character:'testmario', tier: 'B'}
]

#now process the array using an iterator
fighters.each { |f| Fighter.create f }