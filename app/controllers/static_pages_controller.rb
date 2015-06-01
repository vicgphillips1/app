class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
    @products = Product.limit(4)
  end

def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email, :to => 'vicgphillips1@gmail.com', :subject => ' #@name sent you a message, man!', :body => @message).deliver
end

def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  UserMailer.contact_form(@email, @name, @message).deliver
end

end