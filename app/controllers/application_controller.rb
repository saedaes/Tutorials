class ApplicationController < ActionController::Base
	before_action :require_login
 
	private

	def logged_in?
		!!session[:user]
	end

	def require_login
		unless logged_in?
			flash[:error] = "Sesion expirada o no se a iniciado sesion!"
			flash[:message] = "Porfavor ingrese su usuario y contraseña e intentelo de nuevo"
		  	redirect_to :controller => 'login'
		end
	end

end
