class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all
    authorize @users
  end

  def show
    authorize @user
    @my_events = @user.bookings.where(status: "Réservé")
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit()
  end
end
