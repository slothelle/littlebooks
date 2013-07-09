class FacebookController < ApplicationController
  def create
    @user = User.from_omniauth(env["omniauth.auth"])
    create_session
    redirect_to @user
  end

  def destroy
    destroy_session
    redirect_to root_path
  end
end