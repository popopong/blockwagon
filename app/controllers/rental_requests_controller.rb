class RentalRequestsController < ApplicationController
  def index
    @rental_requests = RentalRequest.all
  end

  # Form to create new request will be embedded on Videos Show

  def create
    @video_cassette = RentalRequest.video_cassette
    @rental_request = RentalRequest.new(rental_request_params)
    if @rental_request.save
      flash.notice = "Request Submitted!"
      redirect_to :index
    else
      redirect_to :index
    end
  end

  def accepted_rentals
    @rental_requests = RentalRequest.where(user_id: current_user.id,
                                           status: "Accepted")
  end

  # Update/ edit forms will be buttons on Accepted Rentals page

  # THIS NEEDS WORK, need to figure out input from user
  def edit
    @rental_request = RentalRequest.find(params[:id])
    @video_cassette = RentalRequest.video_cassette
  end

  def update
    @rental_request = RentalRequest.find(params[:id])
    @video_cassette = RentalRequest.video_cassette
    @rental_request = RentalRequest.update(status: "")
  end

  private

  def rental_request_params
    params.require(:rental_request).permit(:message, :start_date, :end_date, :video_casette_id, :user_id)
  end
end
