class StoreController < ApplicationController
	
  def index
  	@counter=count
  	@products = Product.order(:title)
  end
  private
  def count
  	if session[:counter]
  		session[:counter]=session[:counter]+1
  		@counter=session[:counter]
  	else
  		@counter=1
  		session[:counter]=@counter
  	end
  end
end
