class UsersController < ApplicationController
  def dashboard
    @bikers = current_user.bikers
  end
end