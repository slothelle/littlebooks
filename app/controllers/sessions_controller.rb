class SessionsController < ApplicationController
  def new
    @user = User.new
    render "_new"
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      create_session
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    destroy_session
    redirect_to :root
  end
end
