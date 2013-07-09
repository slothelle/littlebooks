class FacebookController < ApplicationController
  def create
    omniauth = request.env["omniauth.auth"]
    @user = User.find_by_provider(omniauth['uid'])
    if @user
      create_session
      redirect_to @user
    else
      @user = User.from_omniauth(env["omniauth.auth"])
      create_session
      redirect_to @user
    end
  end

  def destroy
    destroy_session
    redirect_to root_path
  end
end