class ApplicationController < ActionController::Base
	def is_logged?
		if session[:user] != nil
			result = false
		else
			result = true
		end

	end
end
