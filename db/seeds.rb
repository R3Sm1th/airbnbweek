# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "deleting users"
User.destroy_all

puts "creating users"
login = User.new(first_name: "Russell", last_name: "Hallowes-Smith", email: "test@test.com", password: "123456")
file = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1687685063/IMG_0004_cnpzut.jpg")
login.photo.attach(io: file, filename: "profile_img.jpg", content_type: "image/jpg")
login.save

mogul = User.new(first_name: "Logan", last_name: "Roy", email: "mogul@test.com", password: "123456")
file = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1687964064/roy_x3uphs.webp")
mogul.photo.attach(io: file, filename: "profile_img.jpg", content_type: "image/jpg")
mogul.save

puts "created users"

puts "deleting properties"
Property.destroy_all

puts "creating properties"

p1 = Property.new(name: "BeachFront Loft", address: "Teignmouth, Devon, United Kingdom", postcode: "TN9 8EB", price: 130, rating: 4.97, user: mogul, sleeps: 2, description: "Stunning sunsets & spectacular view up River Teign", amenities: ["Bay view", "Courtyard view", "Public or shared beach access – Beachfront", "Kitchen", "Wifi", "Dedicated workspace", "'43' HDTV with Netflix", "Free washer", "Shared patio or balcony", "Indoor fireplace: wood-burning"] )
file1 = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1688377096/Screenshot_2023-07-03_at_10.36.51_g8opbz.png")
p1.photos.attach(io: file1, filename: "property1_img.jpg", content_type: "image/jpg")
file2 = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1688377095/Screenshot_2023-07-03_at_10.36.58_jldexu.png")
p1.photos.attach(io: file2, filename: "property1_img.jpg", content_type: "image/jpg")
file3 = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1688377096/Screenshot_2023-07-03_at_10.37.18_xcbajh.png")
p1.photos.attach(io: file3, filename: "property1_img.jpg", content_type: "image/jpg")
file4 = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1688377095/Screenshot_2023-07-03_at_10.36.42_cx2pk0.png")
p1.photos.attach(io: file4, filename: "property1_img.jpg", content_type: "image/jpg")
file5 = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1688377535/Screenshot_2023-07-03_at_10.45.15_ytewnn.png")
p1.photos.attach(io: file5, filename: "property1_img.jpg", content_type: "image/jpg")
p1.save

r1 = Review.new(content: "This is lovely", rating: 5, property: p1)
r1.save
r2 = Review.new(content: "Great weekend away with the familt", rating: 4, property: p1)
r2.save

b1 = Booking.new(start: Date.today, end: Date.new(2023, 8, 1), comment:"Will be arriving very late from Gatwick, hopefully okay?", total: 1260, user: login, property: p1)
b1.save

p2 = Property.new(name: "16th Century thatched cottage", address: "Ropley, England, United Kingdom, United Kingdom", postcode: "RP9 8BZ", price: 177, rating: 4.97, user: mogul, sleeps: 4, description: "This chocolate box 16th Century Grade II listed cottage, the oldest house in the village,  is chocca-block full of history.  ", amenities: ["Garden view", "Kitchen", "Wifi", "Free parking on premises", "'24' TV with Amazon Prime Video, Apple TV, Fire TV, Netflix, cablesatellite TV", "Free washing machine", "Bath", "Private patio or balcony", "Private back garden – Fully fenced", "Hair dryer"] )
file1 = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1688380275/Screenshot_2023-07-03_at_11.29.50_hywllc.png")
p2.photos.attach(io: file1, filename: "property1_img.jpg", content_type: "image/jpg")
file2 = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1688380276/Screenshot_2023-07-03_at_11.30.04_rxhbd3.png")
p2.photos.attach(io: file2, filename: "property1_img.jpg", content_type: "image/jpg")
file3 = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1688380277/Screenshot_2023-07-03_at_11.30.21_riiqap.png")
p2.photos.attach(io: file3, filename: "property1_img.jpg", content_type: "image/jpg")
file4 = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1688380272/Screenshot_2023-07-03_at_11.30.11_f1dlsl.png")
p2.photos.attach(io: file4, filename: "property1_img.jpg", content_type: "image/jpg")
file5 = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1688380275/Screenshot_2023-07-03_at_11.30.31_o17ovg.png")
p2.photos.attach(io: file5, filename: "property1_img.jpg", content_type: "image/jpg")
p2.save

r1 = Review.new(content: "This is lovely", rating: 5, property: p2)
r1.save
r2 = Review.new(content: "Great weekend away with the familt", rating: 4, property: p2)
r2.save

b2 = Booking.new(start: Date.new(2023, 8, 1), end: Date.new(2023, 8, 20), comment:"Will be arriving very late from Gatwick, hopefully okay?", total: 1260, user: login, property: p2)
b2.save

p3 = Property.new(name: "The Treehouse at Barrow Hill Barns", address: "Ramsdean, England, United Kingdom", postcode: "RA7 PL4", price: 187, rating: 0, user: mogul, sleeps: 2, description: "Sitting within a historic woodland, this secluded retreat has all the creature comforts of home whilst being immersed in nature on Barrow Hill Farm. ", amenities: ["Kitchen", "Wifi", "Free parking on premises", "TV", "Bath", "Private patio or balcony", "Private back garden – Not fully fenced", "Refrigerator"] )
file1 = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1688477755/Screenshot_2023-07-04_at_14.34.14_hm43vw.png")
p3.photos.attach(io: file1, filename: "property1_img.jpg", content_type: "image/jpg")
file2 = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1688477757/Screenshot_2023-07-04_at_14.34.35_zjjhmu.png")
p3.photos.attach(io: file2, filename: "property1_img.jpg", content_type: "image/jpg")
file3 = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1688477753/Screenshot_2023-07-04_at_14.34.44_yxl6ji.png")
p3.photos.attach(io: file3, filename: "property1_img.jpg", content_type: "image/jpg")
file4 = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1688477753/Screenshot_2023-07-04_at_14.34.29_om9dwm.png")
p3.photos.attach(io: file4, filename: "property1_img.jpg", content_type: "image/jpg")
file5 = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1688477752/Screenshot_2023-07-04_at_14.34.22_ukctkt.png")
p3.photos.attach(io: file5, filename: "property1_img.jpg", content_type: "image/jpg")
p3.save

r1 = Review.new(content: "This is lovely", rating: 3, property: p2)
r1.save
