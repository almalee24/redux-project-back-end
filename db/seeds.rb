# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
goods = ["https://img.favpng.com/21/1/25/giant-landover-giant-hypermarket-supermarket-logo-grocery-store-png-favpng-DhgC2BMS129NPur9tWS3EDaLV.jpg", "https://www.pngitem.com/pimgs/m/352-3526296_stragan-grocery-store-logos-for-grocery-stores-hd.png", "https://img.favpng.com/14/8/8/morrisons-logo-supermarket-grocery-store-retail-png-favpng-fdyZdaX1CUCncMKRtVAZwGriD.jpg", "https://images.africanfinancials.com/zm-shoprt-logo.png", "https://images.africanfinancials.com/bw-choppi-logo.png"]
background =["https://st.depositphotos.com/1395424/3838/i/600/depositphotos_38385127-stock-photo-supermarket-cart.jpg", "https://thumbor.thedailymeal.com/mTo4ojWZD5511nbS8eqWWcYcTPU=//https://www.thedailymeal.com/sites/default/files/2020/01/23/HERO.jpg", "https://www.expatica.com/app/uploads/sites/10/2020/04/uksupe3-1920x1080.jpg", "https://www.ivisitkorea.com/wp-content/uploads/2020/04/emart-korea-supermarket.jpg", "https://www.expatica.com/app/uploads/sites/4/2014/05/besupe2-1920x1080.jpg"]

20.times {
    Company.create(name: Faker::Restaurant.name, location: Faker::Address.full_address, image_logo: goods.sample, image_background: background.sample)
}

10.times{
Good.create(
    name: Faker::Food.ingredient,
    weight: Faker::Commerce.price(range: 0..10.0),
    price: Faker::Commerce.price(range: 0..10.0),
    company_id: 1,
    image: "https://www.kroger.com/content/v2/binary/image/department/grocery/navicon_condiments-sauces-desktop-1576165924487.png"
)}

10.times{
Good.create(
    name: Faker::Food.ingredient,
    weight: Faker::Commerce.price(range: 0..10.0),
    price: Faker::Commerce.price(range: 0..10.0),
    company_id: 2,
    image: "https://i0.wp.com/www.eatthis.com/wp-content/uploads/2019/10/ritz-crackers.jpg?w=640&ssl=1"
)}

10.times{
Good.create(
    name: Faker::Food.ingredient,
    weight: Faker::Commerce.price(range: 0..10.0),
    price: Faker::Commerce.price(range: 0..10.0),
    company_id: 3,
    image: "https://www.frysfood.com/content/v2/binary/image/department/grocery/navicon_doritos-desktop-1576164550549.png"
)}

10.times{
Good.create(
    name: Faker::Food.ingredient,
    weight: Faker::Commerce.price(range: 0..10.0),
    price: Faker::Commerce.price(range: 0..10.0),
    company_id: 4,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF7Khy7fynVUEeF7bLoiYedlVG-XN-BftHRg&usqp=CAU"
)}

10.times{
Good.create(
    name: Faker::Food.ingredient,
    weight: Faker::Commerce.price(range: 0..10.0),
    price: Faker::Commerce.price(range: 0..10.0),
    company_id: 5,
    image: "https://www.frysfood.com/content/v2/binary/image/department/pantry_bread-desktop-1582810583643.png"
)}

User.create(
    name: "almalee",
    username: 'almalee',
    password: 'almalee'
)
