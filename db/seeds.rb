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
VideoCassette.destroy_all
User.destroy_all

# First user
user1 = User.create(first_name: "Poyan", last_name: "Ng", email: "popo@hello.com", password: "123456", avatar: "https://avatars1.githubusercontent.com/u/58827819?v=4")
open_url = open('http://www.omdbapi.com/?i=tt0111161&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user1.id)

open_url = open('http://www.omdbapi.com/?i=tt0117008&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BZTA4MmI5YzgtOTU1Yy00NGVjLTgyMGQtNjNlMDY2YWVlZmYyL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user1.id)

open_url = open('http://www.omdbapi.com/?i=tt0113497&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BZTk2ZmUwYmEtNTcwZS00YmMyLWFkYjMtNTRmZDA3YWExMjc2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY268_CR10,0,182,268_AL_.jpg", user_id: user1.id)

# Second user
user2 = User.create(first_name: "Stephanie", last_name: "BD", email: "kekeke@hello.com", password: "123456", avatar: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1589505233/wfl1xmyhs1yvpueklz1r.jpg")
open_url = open('http://www.omdbapi.com/?i=tt0068646&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY268_CR3,0,182,268_AL_.jpg", user_id: user2.id)

open_url = open('http://www.omdbapi.com/?i=tt0083866&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BMTQ2ODFlMDAtNzdhOC00ZDYzLWE3YTMtNDU4ZGFmZmJmYTczXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user2.id)

open_url = open('http://www.omdbapi.com/?i=tt0107614&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BMjExMDUzODE1N15BMl5BanBnXkFtZTgwNTU5NTYxMTE@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user2.id)

# Third user
user3 = User.create(first_name: "Elie", last_name: "Hymowitz", email: "lollll@hello.com", password: "123456", avatar: "https://avatars1.githubusercontent.com/u/1916741?v=4")
open_url = open('http://www.omdbapi.com/?i=tt0468569&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user3.id)

open_url = open('http://www.omdbapi.com/?i=tt0097523&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BOTQ1NTg4MDAtOGU0OS00ZGQwLTliZjQtNDEzZjAzZGI5MjFjXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user3.id)

open_url = open('http://www.omdbapi.com/?i=tt0349205&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BMTg0NzYxMjY0Ml5BMl5BanBnXkFtZTcwOTU0NDczMw@@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user3.id)

# Fourth user
user4 = User.create(first_name: "Stephanie", last_name: "Diep", email: "fafafa@hello.com", password: "123456", avatar: "https://avatars1.githubusercontent.com/u/61625854?v=4")
open_url = open('http://www.omdbapi.com/?i=tt0110912&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY268_CR1,0,182,268_AL_.jpg", user_id: user4.id)

open_url = open('http://www.omdbapi.com/?i=tt0137523&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 5, cover_photo: "https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user4.id)

open_url = open('http://www.omdbapi.com/?i=tt0099785&apikey=bea36d3e').read
movie = JSON.parse(open_url)
video = VideoCassette.create(title: movie["Title"], year: movie["Year"], description: movie["Plot"], price: 10, cover_photo: "https://m.media-amazon.com/images/M/MV5BMzFkM2YwOTQtYzk2Mi00N2VlLWE3NTItN2YwNDg1YmY0ZDNmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg", user_id: user4.id)

puts "12 movies and 4 users created"