class JoinedConfirmationMailer < ApplicationMailer
	
	default from: 'aayushjoshi129@gmail.com'

	def joined_confirmation_email
		@user = Pilot.find(params[:user])
		mail(to:@user.email , subject: "You are now an official pilot given by Aayush Joshi" )
	end

end
