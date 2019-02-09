class HomeController < ApplicationController
  
  def index
  	if session[:who] == 'T'
  		@url = '/asesorias?TeacherAccount=' + session[:teacher_id].to_s
  	end
  end

end
