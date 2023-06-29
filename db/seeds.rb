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

p1 = Property.new(name: "The Cottage", address: "32 Walabu Way, Sydney", postcode: "BN34HB", price: 125, rating: 4.5, user: mogul)
file = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1685692549/samples/landscapes/architecture-signs.jpg")
p1.photos.attach(io: file, filename: "property1_img.jpg", content_type: "image/jpg")
p1.save

r1 = Review.new(content: "This is lovely", rating: 5, property: p1)
r1.save

p2 = Property.new(name: "The Lesser", address: "1, Mount View, Peacehaven", postcode: "BN34HB", price: 125, rating: 4.5, user: mogul)
file = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1685692549/samples/landscapes/architecture-signs.jpg")
p2.photos.attach(io: file, filename: "property1_img.jpg", content_type: "image/jpg")
p2.save

p3 = Property.new(name: "The Larger", address: "4 Some Other Address, Brighton", postcode: "BN34HB", price: 150, rating: 4.75, user: mogul)
file = URI.open("https://res.cloudinary.com/dcu7y5wnn/image/upload/v1685692549/samples/landscapes/architecture-signs.jpg")
p3.photos.attach(io: file, filename: "property1_img.jpg", content_type: "image/jpg")
p3.save
