class UserMailer < ActionMailer::Base
  default from: "cheri.allen@formidablelabs.com"

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password Reset"
  end

  def new_user(user)
    @user = user
    mail to: user.email, subject: "Your new account at DevLocal Jobs"
  end 
end
