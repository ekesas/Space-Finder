class UserMailer < ActionMailer::Base
	def contact_email(current_user, user, subject, comments)
    @user = user
    @comments = comments
    mail(from: current_user.email, to: @user.email, subject: subject)
	end
end
