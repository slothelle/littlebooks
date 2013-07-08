class FacebookController < ApplicationController
  def create
    @user = User.from_omniauth(env["omniauth.auth"])
  end
end