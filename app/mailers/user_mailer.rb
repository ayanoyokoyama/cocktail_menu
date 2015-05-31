class UserMailer < ApplicationMailer

		def contact_form(email, name, message)
		@message = message
		mail(:from => email,
						:to => 'ayano.yokoyama@me.com',
						:subject => " #{name} sent you a message!")
	end
end
