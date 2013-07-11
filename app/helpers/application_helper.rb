module ApplicationHelper
  def current_user
    @current_user ||= session[:current_user_id] && User.find_by_id(session[:current_user_id])
  end

  def create_session
    session[:current_user_id] = @user.id
  end

  def destroy_session
    session[:current_user_id] = nil
  end

  def is_user?
    current_user && (current_user == @user)
  end

  def is_owner?
    current_user && (current_user == @mytale.user)
  end

  def get_progress_percentage
    if params[:slice] != nil
      num = (params[:slice].to_f / @story_paged.slice_number.to_f * 100).round(0)
      return "#{num}%"
    else
      return "1%"
    end
  end
end
