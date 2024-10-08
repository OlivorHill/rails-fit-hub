class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def accounts
    @bookings = current_user.bookings.includes(:workout)
  end
end
