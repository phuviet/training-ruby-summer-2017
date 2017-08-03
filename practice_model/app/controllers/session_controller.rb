class SessionController < ApplicationController
  def new; end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if !@user.nil? && !@user.confirm_at.nil?
      if @user.authenticate(params[:session][:password])
        log_in @user
        params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
        redirect_to users_path, notice: 'Login successful!!!'
      else
        flash[:notice] = 'password is incorrect!!!'
        render 'new'
      end
    else
      flash[:notice] = "#{params[:session][:email]} does not exist!!!"
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to login_path
  end
end
