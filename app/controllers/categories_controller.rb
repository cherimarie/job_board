class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end 

  def show
    @category = Category.find(params[:id])
  end 

  def new 
  end 

  def create
  end 

  def edit
  end 

  def update
  end

  def destroy
  end


end
