module ApplicationHelper
  def current_user
    @current_user ||= session[:current_user_id] && User.find(session[:current_user_id])
  end

  def create_session
    session[:current_user_id] = @user.id
  end
end
