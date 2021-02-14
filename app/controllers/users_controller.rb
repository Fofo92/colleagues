class UsersController < ApplicationController
  protect_from_forgery
  #before_action :set_user, only: [:show]

  def index
    @users = User.all
    authorize @users
  end

  def show
    @user = User.find(params[:id])
    authorize @user
    @my_events = @user.bookings.where(status: "Booked")
  end

  private

  # def set_user
  #   @user = User.find(params[:id])
  # end
end
