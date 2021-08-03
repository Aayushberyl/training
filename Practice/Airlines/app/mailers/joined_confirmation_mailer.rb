class JoinedConfirmationMailer < ApplicationMailer
	default from: 'aayush.joshi@berylsystems.com'

	def joined_confirmation_email
		@user = Pilot.find(params[:user])

	
		mail(to:@user.email , subject: "You are now an official pilot" )

	end

end
