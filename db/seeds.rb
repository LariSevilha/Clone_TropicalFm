# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.new({
#   :name => "Agência W3",
#   :email => "suporte@agenciaw3.digital",
#   :password => "w3case2022",
#   :password_confirmation => "w3case2022",
#   :admin => true
# }).save

SystemParameter.new({
  :survey => false,
  :photo_gallery => false,
  :photo_gallery_home => false,
  :video_gallery => false,
  :video_gallery_home=> false,
  :nav_menu => false,
  :banner=> false,
  :big_slide => false,
  :news => false,
  :last_news => false,
  :featured => false
}).save
