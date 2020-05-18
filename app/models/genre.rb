class Genre < ApplicationRecord
  has_many :video_genres
  has_many :video_cassettes, through: :video_genres
end
