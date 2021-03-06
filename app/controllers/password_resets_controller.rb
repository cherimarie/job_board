class PasswordResetsController < ApplicationController
  include UsersHelper

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    user.send_password_reset if user
    redirect_to login_path, notice: "Email sent with password reset instructions."
  end

  def edit
    @user = User.find_by_password_reset_token(params[:id])

    if @user.nil?
      redirect_to login_path
      flash[:error] = "Please try again."
    end 
  end

  def update
    session[:user_id] = nil
    @user = User.find_by_password_reset_token!(params[:id])
      #humans, read this line as "if reset sent at > 24 hours ago"
    if @user.password_reset_sent_at < 24.hours.ago
      redirect_to new_password_reset_path, alert: "Password reset has expired."
    elsif @user.update_attributes(user_params)
      session[:user_id] = @user.id 
      @user.update(password_reset_token: nil)
      redirect_to admin_path, notice: "Password has been reset."
    else
      render :edit
      flash[:error] = "Password has not saved correctly, please try again."
    end
  end

end
