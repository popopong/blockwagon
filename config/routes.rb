Rails.application.routes.draw do

  devise_for :users
  root to: 'video_cassettes#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/', to: 'video_cassettes#index' # I can browse all available VHS, I can sort the VHS by genre
  # get '/video_cassette/:id', to: 'video_cassettes#show' # I can check the details of a certain VHS
  # get '/video_cassettes/new', to:'video_cassettes#new' # I can add a VHS for rent
  # delete '/video_cassettes/:id', to:'video_cassettes#destroy' # I can delete a VHS for rent
  # post '/video_cassette', to:'video_cassettes#create'

  # post '/rental_request', to:'rental_requests#create' #I can request to rent a VHS
  # get 'rental_requests/accepted', to:'rental_request#accepted_rentals' # I can see movies that I’ve already rented
  # get '/rental_request', to:'rental_requests#index' # I can see all the rental requests and decide yes/no (owner)
  #                                                   # I can see the status of my rental requests
  # Edit/ Update: As a renter, I can choose to accept or reject a rental request

  # get '/user/:id', to:'users#show' # I can check an owner’s profile and listings

  # post '/wishlists', to: 'wishlist#create' #I can make a list of movies that I’d like to rent (extra)
  # get '/wishlists', to: 'wishlist#index' # I can view my wishlist of movies (extra)

  resources :rental_requests, only: [:index, :create, :edit, :update]
  get 'user/:id/accepted', to: 'rental_request#accepted_rentals'

  resources :users, only: [:show]

  resources :video_cassettes, only: [:index, :show, :new, :create, :destroy]

  resources :wishlists, only: [:index, :create, :destroy]
end
