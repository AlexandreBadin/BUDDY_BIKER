# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'destruction en cours...'
 Biker.destroy_all
 User.destroy_all

puts 'done'

puts 'Creating a fake user...'
#4.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'azerty'
  )

  user.save!

  # rand(1..3).times do
  #   biker = Biker.new(
  #     pseudo: Faker::Superhero.name,
  #     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  #     description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  #     date: Faker::Date.between(from: Date.today, to: '2022-09-25'),
  #     price: rand(20..150),
  #     user: User.all.sample
  #     )

    # creer 3 bikers:

    biker = Biker.new(
      pseudo: "Storm",
      address: "108 Rue Abbé de l'Épée, 33000 Bordeaux, France",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      date: Faker::Date.between(from: Date.today, to: '2022-09-25'),
      price: rand(20..150),
      user: User.all.sample
    )
    biker.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/images(1).jpg')), filename: "image(1).jpg", content_type: "image/jpg")

    biker.save!

    biker2 = Biker.new(
      pseudo: "Daredevil",
      address: "22 Cours du Maréchal Foch, 33000 Bordeaux, France",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      date: Faker::Date.between(from: Date.today, to: '2022-09-25'),
      price: rand(20..150),
      user: User.all.sample
    )
    biker2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/images(2).jpg')), filename: "image(2).jpg", content_type: "image/jpg")

    biker2.save!

     biker3 = Biker.new(
      pseudo: "Flash",
      address: "2-5 Place de la Comédie, 33000 Bordeaux, France",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      date: Faker::Date.between(from: Date.today, to: '2022-09-25'),
      price: rand(20..150),
      user: User.all.sample
    )
    biker3.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/images(3).jpg')), filename: "image(3).jpg", content_type: "image/jpg")

    biker3.save!

#end

puts 'Finished!'




