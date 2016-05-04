class StaticPagesController < ApplicationController
  def index
  end
end

# new method called landing page

class StaticPagesController < ApplicationController

  def landing_page
    @products = Product.all
  end

end

# thank you
def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email,
      :to => 'alexandramaecoleman@gmail.com',
      :subject => "A new contact form message from #{@name}",
      :body => @message).deliver_now
end
