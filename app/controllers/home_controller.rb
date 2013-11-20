class HomeController < ApplicationController

  def show
  	@products = Product.order("updated_at DESC").limit(5)
  	@reviews = Review.order("updated_at DESC").limit(5)
  end
  
end