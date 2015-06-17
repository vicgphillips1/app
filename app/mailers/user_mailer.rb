class UserMailer < ActionMailer::Base
  default from: "vicgphillips1@gmail.com"

  def contact_form(email, name, message)
	@message = message
	@email = email
  	mail(:from => 'vicgphillips1@gmail.com',
	  		:to => 'vicgphillips1@gmail.com', 
	  		:subject => "A new contact form message from #{name}")
  end
end