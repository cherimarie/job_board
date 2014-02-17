class UsersController < ApplicationController
  include UsersHelper

    def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to admin_path, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end
end
