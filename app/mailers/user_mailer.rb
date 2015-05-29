class UserMailer < ActionMailer::Base
  default from: "vicgphillips1@gmail.com"

  def contact_form(email, name, message)
	@message = message
  	mail(:from => email, 
	  		:to => 'vicgphillips1@gmail.com', 
	  		:subject => "A new contact form message from #{name}")
  end
end