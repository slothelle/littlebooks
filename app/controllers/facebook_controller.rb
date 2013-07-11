class FacebookController < ApplicationController
  def create
    omniauth = request.env["omniauth.auth"]
    @user = User.find_by_provider(omniauth['uid'])
    if @user
      create_session
      fb_session
      redirect_to @user
    else
      @user = User.from_omniauth(env["omniauth.auth"])
      create_session
      fb_session
      redirect_to @user
    end
  end

  def fb
   destroy_fb
   destroy_session
   redirect_to new_session_path
  end
end