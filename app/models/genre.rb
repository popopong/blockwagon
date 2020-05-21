class Genre < ApplicationRecord
  has_many :video_genres
  has_many :video_cassettes, through: :video_genres

  validates :name, inclusion: { in: %w(drama comedy romance action sci-fi horror thriller mystery crime animation adventure fantasy comedy-romance action-comedy superhero), message: "%{value} is not a valid genre"}
end
