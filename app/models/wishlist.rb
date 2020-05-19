class Wishlist < ApplicationRecord
  belongs_to :user
  belongs_to :video_cassette
end
