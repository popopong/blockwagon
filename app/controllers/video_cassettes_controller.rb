class VideoCassettesController < ApplicationController
  def index
    @video_cassettes = VideoCassettes.all
  end

  def show
    @video_cassette = VideoCassettes.find(params[:id])
  end

  def new
    @video_cassette = VideoCassettes.new
  end

  def create
    @video_cassette = VideoCassettes.new(video_cassettes_params)
    if @video_cassette.save
      flash.notice = "VHS Added!"
      redirect_to video_cassette_path(@video_cassette)
    else
      render :new
    end

  end

  def destroy
    @video_cassette = VideoCassettes.find(params[:id])
    @video_cassette.destroy
  end

  private

  def video_cassettes_params
    params.require(:video_cassette).permit(:title, :year, :cover_photo,
                                           :description, :price)
  end
end
