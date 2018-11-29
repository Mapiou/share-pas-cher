class BookingsController < ApplicationController
  def new
    @thing = Thing.find(params[:thing_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.thing = Thing.find(params[:thing_id])
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:arrival_date, :departure_date)
  end
end
