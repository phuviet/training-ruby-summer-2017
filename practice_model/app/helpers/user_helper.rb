module UserHelper
  def send_confirm(user)
    @user = user
    @user.confirm
    UserMailer.welcome_email(@user).deliver_now
  end

  def send_reset_password(user)
    @user = user
    UserMailer.reset_password(@user).deliver_now
  end
end
