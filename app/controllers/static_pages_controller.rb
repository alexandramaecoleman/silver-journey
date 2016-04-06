class StaticPagesController < ApplicationController
  def index
  end
end

# new method called landing page

class StaticPagesController < ApplicationController

  def landing_page
    @featured_product = Product.first
  end

end