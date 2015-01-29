class UsersController < ApplicationController
 before_action :authenticate_user!, only: [:show, :index]

  def index
    @users = User.all
  end

  def show
    @user = get_user
  end

  private

  def get_user
    @user = User.find(params[:id])
  end
end
