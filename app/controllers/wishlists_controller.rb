class WishlistsController < ApplicationController
  before_action :authenticate_user!

  def index
    @wishlists = Wishlist.where(user_id: current_user.id)
    @video_ids = @wishlists.map{ |video_id|
      VideoCassette.find(video_id.video_cassette_id)
    }
  end

  # Form to add a VHS to wishlist will be on the Videos Show page
  def create
    @wishlist = Wishlist.new
    @wishlist.user = current_user
    @wishlist.video_cassette_id = params[:video_cassette_id]
    @wishlist.save
    redirect_to video_cassette_path(params[:video_cassette_id])
  end

  def destroy
    @wishlist = Wishlist.find(params[:id])
    redirect_to video_cassette_path(@wishlist.video_cassette)
    @wishlist.destroy
  end
end
