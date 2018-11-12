class UsersController < ApplicationController
  def index
    users = User.all
    render json: users #'Hello this site is under construction.... forever!'
    
  end
  
  def create
    
    user = User.new(params.require(:user).permit(:name,:email))
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: 212
    end
  end
  
  def show
    render json: params
  end
end