class UserMailer < ActionMailer::Base
  default from: "littlebooksnoreply@littlebooks.herokuapp.com"

  def welcome_signup(user)
    @user = user
    mail(to:@user.email, subject: 'Welcome to Little Books')
  end

  def email_story(user,mytale)
    @user = user
    @mytale = mytale
    mail(to:@user.email, subject: "#{@mytale.title}")
  end
end
