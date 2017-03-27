# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


categories = ["automotive", "video games", "furniture", "clothing", "music"]
localities = ["nyc", "atl", "phi", "hfd"]
ads = [
  {title: "Car for sale", description: "RUNS GREAT NO TIRE KICKERS I KNOW WHAT I GOT\nSTARTING PRICE $1000", price:1},
  {title: "used nintendo switch", description: "thought i was buying a gamecube wtf nintendo", price:400},
  {title: "new shirts HUGE BARGAIN!!!!!!!!!!!!!", description: "totally legit clean af", price: 20}
]
#
# cat_loc = []
localities.each{|l|Locality.create!({name: l})}
categories.each{|c|Category.create!({name: c})}

# Category.all do |c|
#   Locality.all do |l|
#     CategoryLocality.create!({category_id: c[:id], locality_id: l[:id]})
#   end
# end
#

10.times{ads.each{|ad| Ad.create!(ad.merge({category_id: rand(5)+1, locality_id: rand(4)+1 }))}}
