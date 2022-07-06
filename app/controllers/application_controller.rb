class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private 
  def require_login
    if current_user.blank?
      flash[:alert] = "Faça Login!!!"
      flash[:notice] = "Faça Login!!!"
      redirect_to login_path
    end  
  end


end
