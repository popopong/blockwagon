class VideoCassettesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # if params[:query].present?
    #   sql_query = "title ILIKE :query OR syllabus ILIKE :query"
      # @movies = Movie.where(sql_query, query: "%#{params[:query]}%")
      # @video_cassettes = policy_scope(VideoCassette.where(sql_query, query: "%#{params[:query]}%"))
    # else
      @pg_search_documents = VideoCassette.search_by_title(params[:query])
      @video_cassettes = policy_scope(VideoCassette)
    # end
  end

  def show
    @video_cassette = VideoCassette.find(params[:id])
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

    rental_request = RentalRequest.where(video_cassette_id: @video_cassette.id)
    if rental_request.exists?
      flash.alert = "Rental requests exist! Cannot be deleted!"
      redirect_to video_cassette_path(@video_cassette)
    else
      wishlists = Wishlist.where(video_cassette_id: @video_cassette.id)
      wishlists.each do |wish|
        wish.destroy
      end
      @video_cassette.destroy
      flash.notice = "Your listing has been deleted!"
      redirect_to video_cassettes_path
    end

  end

  private

  def video_cassettes_params
    params.require(:video_cassette).permit(:title, :year, :cover_photo,
                                           :description, :price)
  end
end
