class RentalRequestsController < ApplicationController
  before_action :authenticate_user!

  def index
    @outgoing_rental_requests = RentalRequest.where(user: current_user)
    rental_requests = RentalRequest.all
    @incoming_rental_requests = rental_requests.select do |request|
    request.video_cassette.user == current_user

    end
  end

  # Form to create new request will be embedded on Videos Show

  def create
    @rental_request = RentalRequest.new(rental_request_params)
    # @rental_request.video_cassette = VideoCassette.find(params[:rental_request][:video_cassette_id])
    @rental_request.user = current_user
    @rental_request.save
    flash.notice = "Request Submitted!"

    redirect_to video_cassette_path(@rental_request.video_cassette_id)
  end

  def accept_request
    @rental_request = RentalRequest.find(params[:id])
    @rental_request.status = "Accepted"
    @rental_request.save

    redirect_to :index
  end

  def reject_request
    @rental_request = RentalRequest.find(params[:id])
    @rental_request.status = "Rejected"
    @rental_request.save

    redirect_to :index
  end
  # Update/ edit forms will be buttons on Accepted Rentals page

  # THIS NEEDS WORK, need to figure out input from user
  def edit
    @rental_request = RentalRequest.find(params[:id])
    @video_cassette = RentalRequest.video_cassette
  end

  def update
    @rental_request = RentalRequest.find(params[:id])
    @video_cassette = @rental_request.video_cassette
    @rental_request = RentalRequest.update(status: "")
  end

  private

  def rental_request_params
    params.require(:rental_request).permit(:message, :start_date, :end_date, :video_cassette_id)
  end
end
