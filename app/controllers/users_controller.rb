class UsersController < ApplicationController
  def dashboard
    @bikers = current_user.bikers
    @bookings = Booking.where(user: current_user)
  end
end