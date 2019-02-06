class LoginController < ApplicationController
  layout false

  def index
  		if request.post?		
				
				if @access = Teacher.exists?(TeacherUser: params[:txtLogin])
					redirect_to :controller => 'home', :who => "T"

				elsif @access = Student.exists?(Register: params[:txtLogin])
					redirect_to :controller => 'home', :who => "S"
				
				elsif @access = User.exists?(UserAccount: params[:txtLogin])
					redirect_to :controller => 'home', :who => "U"		

				else	
					redirect_to :controller => 'login'
					flash[:alert] = "Datos Incorrectos!"
				end
		end
  end

  def new
  	@user = Teacher.find(params[:txtLogin])
  end

  def create
  	redirect_to (home/index)
  end

  def destroy
  	redirect_to(login_path)
  end
end
