class UsersController < ApplicationController
  layout "admin_application"

	def index
		#@users = User.all
    @users = User.where(type: "Client")
    
	end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = Client.new(user_params) #==========> ver se posso deixar Client
    if @user.save
      redirect_to users_path, notice: 'User was successfully created.' 
    else
      render :new
    end
  end
  
  def destroy
    #@user.destroy
    #======> rever isto amanha
    Client.destroy(params[:id])
    redirect_to users_path, notice: 'User was successfully destroyed.'
  end


  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :type, :id)
  end


end
