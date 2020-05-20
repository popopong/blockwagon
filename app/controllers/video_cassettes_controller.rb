class VideoCassettesController < ApplicationController
  def index
    @video_cassettes = VideoCassette.all
  end

  def show
    @video_cassette = VideoCassette.find(params[:id])
    @rental_request = RentalRequest.new
    @user_wishlist = @video_cassette.wishlists.find_by(user: current_user)
  end

  def new
    @video_cassette = VideoCassette.new
  end

  def create
    @video_cassette = VideoCassette.new(video_cassettes_params)
    if @video_cassette.save
      flash.notice = "VHS Added!"
      redirect_to video_cassette_path(@video_cassette)
    else
      render :new
    end

  end

  def destroy
    @video_cassette = VideoCassette.find(params[:id])
    @video_cassette.destroy
  end

  private

  def video_cassettes_params
    params.require(:video_cassette).permit(:title, :year, :cover_photo,
                                           :description, :price)
  end
end
