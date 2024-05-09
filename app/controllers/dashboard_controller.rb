class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    if user_signed_in?
      @user_bookings = current_user.bookings
      @is_owner = current_user.respond_to?(:has_role?) && current_user.has_role?(:owner)
      @owner_items = current_user.items if @is_owner
    end
  end
end
