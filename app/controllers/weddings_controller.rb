class WeddingsController < ApplicationController

  def new
    @wedding =  Wedding.new
  end

  def create
    @wedding = Wedding.new(wedding_params)
    if @wedding.save
      flash[:success] = 'Thank You For Booking '
      redirect_to @wedding
    else
      flash[:danger] = @wedding.errors.full_messages[0]
      render :new, status: :unprocessable_entity
    end
  end


  private
  def wedding_params
    params.require(:wedding).permit(:name, :email, :phone_number, :date_from, :date_to, :special_request, :packages)
  end

end
