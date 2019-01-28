class LoginController < ApplicationController
  layout false

  def index
  		if request.post?		
			if params[:login] != nil and params[:password] != nil
				redirect_to :controller => 'home'
			end
		end
  end
end
