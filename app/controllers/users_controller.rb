class UsersController < ApplicationController
  before_action :authorize, only: [:show]
 
  
def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end


    # GET /users/new
  def new
    @user = User.new
  end


   # GET /users/1/edit
  def edit
  end


  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to '/signup' 
      flash[:notice] = "This email is already has been used!"
      flash[:notice] = "This username is already taken!"
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :username, :location, :email, :password, :password_confirmation)
  end
end
