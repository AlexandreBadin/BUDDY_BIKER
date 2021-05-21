class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @biker = Biker.find(params[:biker_id])
    @booking.user = current_user
    @booking.biker = @biker
    @booking.booking_price = @biker.price
    if @booking.save!
      redirect_to users_dashboard_path
    else
      render 'bikers/show'
    end
  end

  def destroy
    @booking = Booking.find_by(id: params['id'].to_i)
    @booking.destroy
    redirect_to users_dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :booking_price)
  end
end
