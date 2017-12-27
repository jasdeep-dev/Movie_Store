class UserMailer < ApplicationMailer

	default from: "#{ Rails.application.secrets.email}"
	
	def welcome_email(user)
    @user = user
    @url  = "#{ Rails.application.secrets.url}/movies"
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end
