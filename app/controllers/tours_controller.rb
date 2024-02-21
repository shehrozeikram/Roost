class ToursController < ApplicationController
  def new
    @tour =  Tour.new
  end

  def create
    @tour = Tour.new(tour_params)
    if @tour.save
      flash[:success] = 'Thank You For Booking '
      redirect_to @tour
    else
      flash[:danger] = @tour.errors.full_messages[0]
      render :new, status: :unprocessable_entity
    end
  end

  private
  def tour_params
    params.require(:tour).permit(:name, :email, :date, :destination, :special_request)
  end

end
