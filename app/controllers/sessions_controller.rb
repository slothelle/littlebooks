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
      render "_new"
    else
      @error = "Authentication failed."
      render "_new"
    end
  end

  def destroy
    destroy_session
    redirect_to :root
  end
end
