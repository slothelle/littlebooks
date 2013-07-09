class SessionsController < ApplicationController
  def new
    @user = User.new
    render "_new" # ew. do render partial: "new"
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      create_session
      redirect_to @user and return
    elsif @user.nil?
      @error = "An account with the email address #{params[:email]} not found."
    else
      @error = "Authentication failed."
    end

    render partial: "new"
  end

  def destroy
    destroy_session
    redirect_to new_session_path
  end
  
end
