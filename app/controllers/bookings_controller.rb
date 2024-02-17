class BookingsController < ApplicationController
  def index
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to '/'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :email, :time, :rooms, :special_request)
    # params.permit(:name, :email, :time, :rooms, :special_request)
  end

end
