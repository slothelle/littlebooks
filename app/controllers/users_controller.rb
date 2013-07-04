class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id 
      redirect_to user_path(current_user)
    else
      render new_user_path
    end
  end

end
