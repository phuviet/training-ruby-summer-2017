module UserHelper
  def send_confirm(user)
    @user = user
    @user.confirm
    UserMailer.welcome_email(@user).deliver_now
  end
end
