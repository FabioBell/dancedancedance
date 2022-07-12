class UsersController < ApplicationController
  layout "admin_application"
  before_action :set_user, only: [:show, :edit, :update, :destroy]


	def index
		#@users = User.all
    @users = Client.where(type: "Client")
    
	end

  def show
  end

  def new
    @user = Client.new
    @user_path = users_path
    @user_method = :post
  end
  
  def edit
    @user_path = user_path(@user.id)
    @user_method = :patch
  end
  
  def create
    @user = Client.new(user_params) 
    if @user.save
      redirect_to users_path, notice: 'User was successfully created.' 
    else
      render :new
    end
  end
  
  def destroy
    #@user.destroy
    Client.destroy(params[:id])
    redirect_to users_path, notice: 'User was successfully destroyed.'
  end

  def update
    @user.update(user_params)
    redirect_to users_path, notice: 'User was successfully updated.'
  end

  private
     # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = Client.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end


end
