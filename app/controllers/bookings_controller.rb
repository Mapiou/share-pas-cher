class BookingsController < ApplicationController
  def create
  end

  private

  def booking_params
    params.require(:booking).permit(:arrival_date, :departure_date)
  end
end
