class ResetPasswordController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user.valid?
      send_reset_password @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user.update_attribute(:password, params[:user][:password])
      redirect_to login_path
    else
      render 'edit'
    end
  end
end
