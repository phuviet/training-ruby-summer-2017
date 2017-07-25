class UsersController < ApplicationController
  def index
    if logged_in?
      @page_number = (User.all.count.to_f / 10).ceil
      params[:page] = params[:page].to_i > 0 ? params[:page].to_i : 1
      @users = User.all.limit(10).offset((params[:page] - 1) * 10)
    else
      redirect_to login_path
    end
  end

  def confirm
    @user = User.find_by(email: params[:email], confirm_token: params[:confirm_token])
    @user.update_attribute(:confirm_at, Time.now) if DateTime.now - 5.seconds < @user.confirm_send_at
    redirect_to login_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params_new)
    if @user.valid? && @user.save
      send_confirm @user
      redirect_to login_path
    else
      render 'new'
    end
  end

  def user_params_new
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar)
  end

  def user_params_update
    params.require(:user).permit(:username, :email, :password, :name, :gender, :birthday, :role, :avatar, :provider, :uid)
  end
end
