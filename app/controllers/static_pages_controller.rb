class StaticPagesController < ApplicationController
  def about
  end

  def contact
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@name, @email, @message).deliver
  end

  def landing_page
    @featured_product = Product.first
    @products = Product.limit(3)
  end
end

