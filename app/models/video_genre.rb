class VideoGenre < ApplicationRecord
  belongs_to :genre
  has_many :video_cassettes
end
