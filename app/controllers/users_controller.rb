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
      @error = @user.errors.full_messages.join(". ")
      render "_new"
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
