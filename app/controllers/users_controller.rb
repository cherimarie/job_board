class UsersController < ApplicationController
  include UsersHelper

  before_filter :authorize, only: [:create]

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      @user.send_new_user
      redirect_to users_path, notice: "Admin created."
    else
      render "new"
      flash[:error] = "User was not created. Please try again."
    end
  end

  def index 
    @users = User.all
  end 


end
