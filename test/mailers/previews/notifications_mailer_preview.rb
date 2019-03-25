# Preview all emails at http://localhost:3000/rails/mailers/notifications_mailer
class NotificationsMailerPreview < ActionMailer::Preview
	def notification
		NotificationsMailer.notification(Teacher.first)
	end
end
