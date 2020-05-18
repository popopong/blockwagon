class VideoCassette < ApplicationRecord
  belongs_to :video_genre
  belongs_to :user
  has_many :wishlists
  has_many :rental_requests

  validates :title, presence: true
  validates :year, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :price, presence: true, numericality: { only_integer: true }
end
