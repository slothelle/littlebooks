class UserMailer < ActionMailer::Base
  default from: "littlebooksnoreply@littlebooks.herokuapp.com"

  def welcome_signup(user)
    @user = user
    mail(to:@user.email, subject: 'Welcome to Little Books')
  end
end
