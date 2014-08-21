class ContactsController < ApplicationController

	def contact
		subject = params[:subject]
		comments = params[:comments]
		user = User.find_by(:id => params[:user_id])
		UserMailer.contact_email(current_user, user, subject, comments).deliver
		flash[:success] = "Email sent!"
		redirect_to root_path
	end

end
