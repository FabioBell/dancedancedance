class UserSessionsController < ApplicationController
  def create
    login_params = params[:login]

    @user = login(login_params[:email],login_params[:password])
    debugger
    if @user
      redirect_to(songs_path, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: 'Logged out!')
  end
end
