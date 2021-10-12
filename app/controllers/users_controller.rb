class UsersController < ApplicationController
  before_action :set_user, only: [:show, :follow]

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def follow
    current_user.events.create(action: "followed", eventable: @user)
    redirect_to  users_path
  end
  
  private
  def set_user
    @user = User.find(params[:id])
  end
end
