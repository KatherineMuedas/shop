class StoreController < ApplicationController
  def increment_count
    session[:counter] ||= 0
    session[:counter] += 1
  end
  def index
    @count = increment_count
    @products = Product.order(:title)
  end
end
