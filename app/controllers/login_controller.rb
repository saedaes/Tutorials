class LoginController < ApplicationController
  layout false
  skip_before_action :require_login, only: [:index, :destroy]

  def index
  		if request.post?					
				if Teacher.exists?(TeacherUser: params[:txtLogin])
					define_properties(params[:txtLogin], "T")
					redirect_to :controller => 'home'
				elsif Student.exists?(Register: params[:txtLogin])
					define_properties(params[:txtLogin], "S")
					redirect_to :controller => 'home'
				elsif User.exists?(UserAccount: params[:txtLogin])
					define_properties(params[:txtLogin], "U")
					redirect_to :controller => 'home'
				else	
					redirect_to :controller => 'login'
					flash[:error] = "Datos Incorrectos!"
					flash[:message] = "Porfavor ingrese sus datos correctamente e intentelo de nuevo"
				end
		end
  end

  def destroy
  	reset_session
  	redirect_to :controller => 'login'
  end

  def define_properties(login, who)

  	session[:user] = login
  	session[:who] = who
  	case who
  		when "T"
  			get_teacher_properties(login)
  		when "S"
  			get_student_properties(login)
  		when "U"
  			get_user_properties(login)
  	end
  		
  end

  def get_teacher_properties(login)
  	@teacher = Teacher.find_by(TeacherUser: login) 
  	session[:teacher_id] = @teacher.id
  	session[:name] = @teacher.Name
  	session[:last_name] = @teacher.LastName
  	session[:second_last_name] = @teacher.SecondLastName
  	session[:email] = @teacher.Email
  	session[:is_admin] = @teacher.IsAdmin
  end

  def get_student_properties(login)
  	@student = Student.find_by(Register: login)
  	session[:name] = @student.Name
  	session[:last_name] = @student.LastName
  	session[:second_last_name] = @student.SecondLastName
  	session[:is_admin] = false
  	session[:is_assesor] = @student.IsAssessor
  end

  def get_user_properties(login)
  	@user = User.find_by(UserAccount: login)
  	session[:name] = @user.Name
  	session[:last_name] = @user.LastName
  	session[:second_last_name] = @user.SecondLastName
  	session[:is_admin] = false
  end
end
