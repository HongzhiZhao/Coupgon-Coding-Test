# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

include FactoryGirl::Syntax::Methods

unless %w(test production).include? Rails.env
  puts 'Creating golf club, users and reservations...'
  create :golf_club, :seed_development_database
  p 'DONE'
end
