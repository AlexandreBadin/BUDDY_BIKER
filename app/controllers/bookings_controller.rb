class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @biker = Biker.find(params[:biker_id])
    @booking.biker = @biker
    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :booking_price)
  end
end
