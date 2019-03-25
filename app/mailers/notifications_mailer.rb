class NotificationsMailer < ApplicationMailer
	default from: "notificaciones@safcq.com"

	def notification(user, tutorial_date, student, schedule, subject)
		@user = user
		@tutorial_date = tutorial_date
		@student = student
		@schedule = schedule
		@subject = subject

		mail(to: @user.Email, subject: 'Notificacion SAFCQ')
	end
end
