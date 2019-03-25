class ApplicationMailer < ActionMailer::Base
  default from: 'notificaciones@safcq.com'
  
  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end
