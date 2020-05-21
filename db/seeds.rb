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
Genre.destroy_all
RentalRequest.destroy_all
Wishlist.destroy_all
VideoCassette.destroy_all
User.destroy_all
RentalRequest.destroy_all
Wishlist.destroy_all

puts "Generating default genres..."
drama = Genre.create(name: "drama")
romance = Genre.create(name: "romance")
action = Genre.create(name: "action")
sci_fi = Genre.create(name: "sci-fi")
horror = Genre.create(name: "horror")
thriller = Genre.create(name: "thriller")
mystery = Genre.create(name: "mystery")
crime = Genre.create(name: "crime")
animation = Genre.create(name: "animation")
adventure = Genre.create(name: "adventure")
fantasy = Genre.create(name: "fantasy")
superhero = Genre.create(name: "superhero")
comedy_romance = Genre.create(name: "comedy-romance")
action_comedy = Genre.create(name: "action-comedy")

puts "14 genres generated successfully!"

puts "Creating users..."
user1 = User.create(first_name: "Poyan", last_name: "Ng", email: "poyan@hello.com", password: "123456", avatar: "https://avatars1.githubusercontent.com/u/58827819?v=4")

user2 = User.create(first_name: "Stephanie", last_name: "BD", email: "stepbd@hello.com", password: "123456", avatar: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1589505233/wfl1xmyhs1yvpueklz1r.jpg")

user3 = User.create(first_name: "Elie", last_name: "Hymowitz", email: "elie@hello.com", password: "123456", avatar: "https://avatars1.githubusercontent.com/u/1916741?v=4")

user4 = User.create(first_name: "Stephanie", last_name: "Diep", email: "stepd@hello.com", password: "123456", avatar: "https://avatars1.githubusercontent.com/u/61625854?v=4")

puts "4 users successfully created!"

puts "Creating video cassettes..."
open_url = open('http://www.omdbapi.com/?i=tt0111161&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video1 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user1.id)

open_url = open('http://www.omdbapi.com/?i=tt0117008&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video2 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BZTA4MmI5YzgtOTU1Yy00NGVjLTgyMGQtNjNlMDY2YWVlZmYyL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user1.id)

open_url = open('http://www.omdbapi.com/?i=tt0113497&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video3 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BZTk2ZmUwYmEtNTcwZS00YmMyLWFkYjMtNTRmZDA3YWExMjc2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY268_CR10,0,182,268_AL_.jpg", user_id: user1.id)

open_url = open('http://www.omdbapi.com/?i=tt0068646&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video4 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY268_CR3,0,182,268_AL_.jpg", user_id: user2.id)

open_url = open('http://www.omdbapi.com/?i=tt0083866&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video5 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BMTQ2ODFlMDAtNzdhOC00ZDYzLWE3YTMtNDU4ZGFmZmJmYTczXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user2.id)

open_url = open('http://www.omdbapi.com/?i=tt0107614&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video6 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BMjExMDUzODE1N15BMl5BanBnXkFtZTgwNTU5NTYxMTE@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user2.id)

open_url = open('http://www.omdbapi.com/?i=tt0468569&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video7 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user3.id)

open_url = open('http://www.omdbapi.com/?i=tt0097523&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video8 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BOTQ1NTg4MDAtOGU0OS00ZGQwLTliZjQtNDEzZjAzZGI5MjFjXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user3.id)

open_url = open('http://www.omdbapi.com/?i=tt0349205&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video9 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BMTg0NzYxMjY0Ml5BMl5BanBnXkFtZTcwOTU0NDczMw@@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user3.id)

open_url = open('http://www.omdbapi.com/?i=tt0110912&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video10 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY268_CR1,0,182,268_AL_.jpg", user_id: user4.id)

open_url = open('http://www.omdbapi.com/?i=tt0137523&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video11 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 5, cover_photo: "https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user4.id)

open_url = open('http://www.omdbapi.com/?i=tt0099785&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video12 = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BMzFkM2YwOTQtYzk2Mi00N2VlLWE3NTItN2YwNDg1YmY0ZDNmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user4.id)

puts "12 video cassettes successfully created!"

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

puts "All seeds are done! Use stepd@hello.com or poyan@hello.com to test rentalrequest and wishlist pages!"
