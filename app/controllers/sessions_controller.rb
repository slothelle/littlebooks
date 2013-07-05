class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      create_session
      redirect_to :root
    elsif @user.nil?
      @error = "An account with the email address #{params[:email]} not found."
      render :new
    else
      @error = "Authentication failed."
      render :new
    end
  end

  def destroy
    destroy_session
    redirect_to :root
  end
end
