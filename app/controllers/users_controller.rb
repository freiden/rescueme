class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
  end

  def edit
    @user = User.find_by_id params[:id]
  end

  def update
    @user = User.find_by_id params[:id]
  end

  def destroy
  end
end
