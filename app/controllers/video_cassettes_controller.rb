class VideoCassettesController < ApplicationController
  def index
    @video_cassettes = policy_scope(VideoCassette)
    # @video_cassettes = VideoCassette.all
  end

  def show
    @video_cassette = policy_scope(VideoCassette.find(params[:id]))
    @rental_request = RentalRequest.new
    @user_wishlist = @video_cassette.wishlists.find_by(user: current_user)
    
    skip_authorization
    skip_policy_scope
  end

  def new
    @video_cassette = VideoCassette.new

    authorize @video_cassette
  end

  def create
    @video_cassette = VideoCassette.new(video_cassettes_params)
    @video_cassette.user = current_user
    authorize @video_cassette

    if @video_cassette.save
      flash.notice = "VHS Added!"
      redirect_to video_cassette_path(@video_cassette)
    else
      render :new
    end
  end

  def edit
    @video_cassette = VideoCassette.find(params[:id])

    authorize @video_cassette
  end

  def update
    @video_cassette = VideoCassette.find(params[:id])
    @video_cassette.user = current_user
    authorize @video_cassette

    if @video_cassette.update(video_cassettes_params)
      redirect_to video_cassette_path(@video_cassette)
    else
      render "edit"
    end
  end

  def destroy
    @video_cassette = VideoCassette.find(params[:id])

    authorize @video_cassette

    @video_cassette.destroy

    redirect_to video_cassettes_path
  end

  private

  def video_cassettes_params
    params.require(:video_cassette).permit(:title, :year, :cover_photo,
                                           :description, :price)
  end
end
