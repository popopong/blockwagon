# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

puts "Cleaning database..."
VideoGenre.destroy_all
Genre.destroy_all
RentalRequest.destroy_all
Wishlist.destroy_all
VideoCassette.destroy_all
User.destroy_all

puts "Generating default genres..."
drama = Genre.create!(name: "drama")
romance = Genre.create!(name: "romance")
action = Genre.create!(name: "action")
sci_fi = Genre.create!(name: "sci-fi")
horror = Genre.create!(name: "horror")
comedy = Genre.create!(name: "comedy")
thriller = Genre.create!(name: "thriller")
mystery = Genre.create!(name: "mystery")
crime = Genre.create!(name: "crime")
animation = Genre.create!(name: "animation")
family = Genre.create!(name: "family")
adventure = Genre.create!(name: "adventure")
fantasy = Genre.create!(name: "fantasy")
superhero = Genre.create!(name: "superhero")
comedy_romance = Genre.create!(name: "comedy-romance")
action_comedy = Genre.create!(name: "action-comedy")

puts "16 genres generated successfully!"

puts "Creating users..."
user1 = User.create(first_name: "Poyan", last_name: "Ng", email: "poyan@hello.com", password: "123456", avatar: "https://avatars1.githubusercontent.com/u/58827819?v=4")

user2 = User.create(first_name: "Stephanie", last_name: "BD", email: "stepbd@hello.com", password: "123456", avatar: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1589505233/wfl1xmyhs1yvpueklz1r.jpg")

user3 = User.create(first_name: "Elie", last_name: "Hymowitz", email: "elie@hello.com", password: "123456", avatar: "https://avatars1.githubusercontent.com/u/1916741?v=4")

user4 = User.create(first_name: "Stephanie", last_name: "Diep", email: "stepd@hello.com", password: "123456", avatar: "https://avatars1.githubusercontent.com/u/61625854?v=4")

puts "4 users successfully created!"

puts "Creating video cassettes..."
open_url = open('http://www.omdbapi.com/?i=tt0111161&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video1 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: movie["Poster"], user_id: user1.id)

open_url = open('http://www.omdbapi.com/?i=tt0117008&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video2 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: movie["Poster"],user_id: user1.id)

open_url = open('http://www.omdbapi.com/?i=tt0113497&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video3 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: movie["Poster"], user_id: user1.id)

open_url = open('http://www.omdbapi.com/?i=tt0068646&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video4 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: movie["Poster"], user_id: user2.id)

open_url = open('http://www.omdbapi.com/?i=tt0083866&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video5 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: movie["Poster"], user_id: user2.id)

open_url = open('http://www.omdbapi.com/?i=tt0107614&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video6 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: movie["Poster"], user_id: user2.id)

open_url = open('http://www.omdbapi.com/?i=tt0468569&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video7 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: movie["Poster"], user_id: user3.id)

open_url = open('http://www.omdbapi.com/?i=tt0097523&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video8 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: movie["Poster"], user_id: user3.id)

open_url = open('http://www.omdbapi.com/?i=tt0349205&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video9 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: movie["Poster"], user_id: user3.id)

open_url = open('http://www.omdbapi.com/?i=tt0110912&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video10 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: movie["Poster"], user_id: user4.id)

open_url = open('http://www.omdbapi.com/?i=tt0137523&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video11 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 5, cover_photo: movie["Poster"], user_id: user4.id)

open_url = open('http://www.omdbapi.com/?i=tt0099785&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video12 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: movie["Poster"], user_id: user4.id)

open_url = open('http://www.omdbapi.com/?i=tt0000003&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video13 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 4, cover_photo: movie["Poster"], user_id: user1.id)

open_url = open('http://www.omdbapi.com/?i=tt0838283&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video14 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: movie["Poster"], user_id: user3.id)

open_url = open('http://www.omdbapi.com/?i=tt0332280&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video15 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: movie["Poster"], user_id: user4.id)

puts "15 video cassettes successfully created!"

puts "Creating rental requests..."
RentalRequest.create!(message: "Hi im testing request 1", start_date: "2020-05-21", end_date: "2020-05-25", video_cassette_id: video1.id, user_id: user4.id)
RentalRequest.create!(message: "Hi im testing request 2", start_date: "2020-05-21", end_date: "2020-05-24", video_cassette_id: video2.id, user_id: user4.id)
RentalRequest.create!(message: "Hi im testing request 3", start_date: "2020-05-21", end_date: "2020-05-27", video_cassette_id: video3.id, user_id: user4.id)
RentalRequest.create!(message: "Hi im testing request 4", start_date: "2020-05-21", end_date: "2020-05-28", video_cassette_id: video4.id, user_id: user4.id)
RentalRequest.create!(message: "Hi im testing request 5", start_date: "2020-05-21", end_date: "2020-05-25", video_cassette_id: video5.id, user_id: user4.id)
RentalRequest.create!(message: "Hi im testing request 6", start_date: "2020-05-21", end_date: "2020-05-24", video_cassette_id: video6.id, user_id: user4.id)
RentalRequest.create!(message: "Hi im testing request 7", start_date: "2020-05-21", end_date: "2020-05-27", video_cassette_id: video7.id, user_id: user4.id)
RentalRequest.create!(message: "Hi im testing request 8", start_date: "2020-05-21", end_date: "2020-05-28", video_cassette_id: video8.id, user_id: user4.id)
RentalRequest.create!(message: "Hi im testing request 9", start_date: "2020-05-21", end_date: "2020-05-25", video_cassette_id: video9.id, user_id: user4.id)

RentalRequest.create!(message: "Hi im testing request 10", start_date: "2020-05-21", end_date: "2020-05-24", video_cassette_id: video10.id, user_id: user1.id)
RentalRequest.create!(message: "Hi im testing request 11", start_date: "2020-05-21", end_date: "2020-05-27", video_cassette_id: video11.id, user_id: user1.id)
RentalRequest.create!(message: "Hi im testing request 12", start_date: "2020-05-21", end_date: "2020-05-28", video_cassette_id: video12.id, user_id: user1.id)

RentalRequest.create!(message: "Hi im testing request 13", start_date: "2020-05-21", end_date: "2020-05-25", video_cassette_id: video10.id, user_id: user2.id)

RentalRequest.create!(message: "Hi im testing request 14", start_date: "2020-05-21", end_date: "2020-05-25", video_cassette_id: video15.id, user_id: user3.id)
puts "13 rental requests successfully created!"

puts "Creating wishlists..."
Wishlist.create!(user_id: user4.id, video_cassette_id: video1.id)
Wishlist.create!(user_id: user4.id, video_cassette_id: video2.id)
Wishlist.create!(user_id: user4.id, video_cassette_id: video3.id)
Wishlist.create!(user_id: user4.id, video_cassette_id: video4.id)
Wishlist.create!(user_id: user4.id, video_cassette_id: video5.id)
Wishlist.create!(user_id: user4.id, video_cassette_id: video6.id)
Wishlist.create!(user_id: user4.id, video_cassette_id: video7.id)
Wishlist.create!(user_id: user4.id, video_cassette_id: video8.id)
Wishlist.create!(user_id: user4.id, video_cassette_id: video9.id)

Wishlist.create!(user_id: user1.id, video_cassette_id: video10.id)
Wishlist.create!(user_id: user1.id, video_cassette_id: video11.id)
Wishlist.create!(user_id: user1.id, video_cassette_id: video12.id)

puts "12 wishlists successfully created!"

puts "Linking genres to movies..."
VideoGenre.create!(genre: drama, video_cassette_id: video1.id)

VideoGenre.create!(genre: comedy, video_cassette_id: video2.id)
VideoGenre.create!(genre: family, video_cassette_id: video2.id)
VideoGenre.create!(genre: fantasy, video_cassette_id: video2.id)

VideoGenre.create!(genre: adventure, video_cassette_id: video3.id)
VideoGenre.create!(genre: comedy, video_cassette_id: video3.id)
VideoGenre.create!(genre: family, video_cassette_id: video3.id)
VideoGenre.create!(genre: fantasy, video_cassette_id: video3.id)

VideoGenre.create!(genre: drama, video_cassette_id: video4.id)
VideoGenre.create!(genre: drama, video_cassette_id: video4.id)

VideoGenre.create!(genre: family, video_cassette_id: video5.id)
VideoGenre.create!(genre: sci_fi, video_cassette_id: video5.id)

VideoGenre.create!(genre: comedy, video_cassette_id: video6.id)
VideoGenre.create!(genre: drama, video_cassette_id: video6.id)
VideoGenre.create!(genre: family, video_cassette_id: video6.id)

VideoGenre.create!(genre: action, video_cassette_id: video7.id)
VideoGenre.create!(genre: crime, video_cassette_id: video7.id)
VideoGenre.create!(genre: drama, video_cassette_id: video7.id)
VideoGenre.create!(genre: thriller, video_cassette_id: video7.id)

VideoGenre.create!(genre: adventure, video_cassette_id: video8.id)
VideoGenre.create!(genre: comedy, video_cassette_id: video8.id)
VideoGenre.create!(genre: family, video_cassette_id: video8.id)
VideoGenre.create!(genre: sci_fi, video_cassette_id: video8.id)

VideoGenre.create!(genre: comedy, video_cassette_id: video9.id)
VideoGenre.create!(genre: family, video_cassette_id: video9.id)

VideoGenre.create!(genre: crime, video_cassette_id: video10.id)
VideoGenre.create!(genre: drama, video_cassette_id: video10.id)

VideoGenre.create!(genre: drama, video_cassette_id: video11.id)

VideoGenre.create!(genre: family, video_cassette_id: video12.id)
VideoGenre.create!(genre: comedy, video_cassette_id: video12.id)

VideoGenre.create!(genre: animation, video_cassette_id: video13.id)
VideoGenre.create!(genre: comedy, video_cassette_id: video13.id)
VideoGenre.create!(genre: romance, video_cassette_id: video13.id)

VideoGenre.create!(genre: comedy, video_cassette_id: video14.id)

VideoGenre.create!(genre: drama, video_cassette_id: video15.id)
VideoGenre.create!(genre: romance, video_cassette_id: video15.id)
puts "Linking genres to movies successful!"


puts "All seeds are done! Use stepd@hello.com or poyan@hello.com to test rentalrequest and wishlist pages!"
