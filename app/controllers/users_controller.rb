class UsersController < ApplicationController
  def new
    @user = User.new
    render "_new"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      create_session
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
