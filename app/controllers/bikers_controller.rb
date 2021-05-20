class BikersController < ApplicationController

  # def index
  #   @bikers = Biker.all
  # end

  def index
    if params[:biker].present?
      @bikers = Biker.near(params[:address], 5)
    else
      @bikers = Biker.all
    end
  end

  def show
    @biker = Biker.find(params[:id])
    @booking = Booking.new
  end
end
