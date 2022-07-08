class UserSessionsController < ApplicationController
  
  def create
    login_params = params[:login]

    @user = login(login_params[:email],login_params[:password])
    
    if @user.is_a? Client
      redirect_to(songs_path, notice: 'Login successful')
    elsif @user.is_a? Admin
      redirect_to(songs_path, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(home_index_path, notice: 'Logged out!')
  end
end
