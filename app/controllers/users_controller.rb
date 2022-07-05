class UsersController < ApplicationController

	def index
		@users = User.all
	end

  def show
  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end


end
