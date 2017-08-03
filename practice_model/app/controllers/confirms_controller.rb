class ConfirmsController < ApplicationController
  def new
    @user = User.find_by(email: params[:email], confirm_token: params[:confirm_token])
    @user.update_attribute(:confirm_at, Time.now) if DateTime.now - 3.days < @user.confirm_send_at
    redirect_to login_path
  end
end
