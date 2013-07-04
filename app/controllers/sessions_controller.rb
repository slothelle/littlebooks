class SessionsControllers < AppplicationController
  def new
  end

  def create
    @user = User.find_all_by_email(params[:email])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
end
