class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    mail(to: user.email, subject: 'Login success')
  end

  def reset_password(user)
    @user = user
    mail(to: user.email, subject: 'Reset success')
  end
end
