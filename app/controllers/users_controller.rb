class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all
    authorize @users
  end

  def show
    authorize @user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :hobby_list)
  end
end
