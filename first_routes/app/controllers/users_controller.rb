  class UsersController < ApplicationController
  def index
    users = User.all
    render json: users #'Hello this site is under construction.... forever!'  
  end
  
  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: 212
    end
  end
  
  def show
    user = User.find(params[:id])
    render json: user
  end
  
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user
  end
    
    
  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:username)
  end
end