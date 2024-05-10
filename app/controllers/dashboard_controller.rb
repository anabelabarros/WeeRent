class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    if user_signed_in?
      @user_bookings = current_user.bookings
      @owner_items = current_user.items
    end
  end
end
