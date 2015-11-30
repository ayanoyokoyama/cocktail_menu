class StaticPagesController < ApplicationController
	def index
    end

	def landing_page
		@product = Product.limit(4)
	end

def thank_you
	@name = params[:name]
	@email = params[:email]
	@message = params[:message]
	ActionMailer::Base.mail(:from => @email, :to => 'ayano.yokoyama@me.com', :subject => ' #@name sent you a message!', :body => @message).deliver
end

def thank_you
	@name = params[:name]
	@email = params[:email]
	@message = params[:message]
	UserMailer.contact_form(@email, @name, @message).deliver
end
  
end
