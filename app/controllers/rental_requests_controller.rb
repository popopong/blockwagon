class RentalRequestsController < ApplicationController
  def index
    @rental_requests = RentalRequest.all
  end

  def create
    @rental_request = RentalRequest.new(rental_request_params)
    if @rental_request.save
      flash.notice = "Request Submitted!"
      redirect_to :index
    else
      # Needs to render original page
      redirect_to :index
    end
  end

  def accepted_rentals

  end

  private

  def rental_request_params
    params.require(:rental_request).permit(:message, :start_date, :end_date)
  end
end
