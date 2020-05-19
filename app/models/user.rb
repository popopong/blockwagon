class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :rental_requests
  has_many :video_cassettes, through: :wishlists
  has_many :wishlists
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/, message: "Please enter a valid email address"}
  validates :encrypted_password, presence: true
end
