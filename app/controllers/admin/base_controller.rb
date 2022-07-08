class Admin::BaseController < ApplicationController
	before_action :require_admin


	def index
		
	end

	private

	def require_admin
		return if current_user.is_a? Admin

    	flash[:alert] = "não tem permissões!!!"
      	redirect_to root_path
	end

end
