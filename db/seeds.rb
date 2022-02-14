# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create({
  name: "Agência W3",
  email: "suporte@agenciaw3.digital",
  password: "w3case2022",
  password_confirmation: "w3case2022",
  admin: true
})

## Cria o formato dos Banners
FormatAd.create([
  { title: 'Topo', width: 468, height: 60, position: 1 },
  { title: 'Lateral', width: 300, height: 100, position: 2 }, 
  { title: 'Destaque', width: 728, height: 90, position: 4 },
])

# # Cria os Banners
# (1..3).each { |i| #Loop correspondente ao total de formatos de banners cadastrados(Topo, Lateral e Destaque)

#   case #Condição para adicionar o tipo de imagem correspondente ao formato de banner na url de uploade
#     when i ==1
#      url =  "https://via.placeholder.com/468x60.gif"
#     when i == 2
#       url = "https://via.placeholder.com/300x250.gif"
#     else
#       url = "https://via.placeholder.com/728x90.gif"
#   end

#   4.times do #Loop para criação dos banners
#     banner = BannerAd.create( 
#       format_ad_id: i,  
#       title: Faker::Lorem.sentence,
#       start_date: Time.now,
#       finish_date: "2050-10-09 10:52:00",
#       url: "agenciaw3.digital",
#       remote_file_ad_url: url     
#     )
#     p "Banner #{banner.title} foi inserido"
#   end    
#  }
