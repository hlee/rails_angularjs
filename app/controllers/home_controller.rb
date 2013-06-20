class HomeController < ApplicationController
  def index
  end
  
  def show_products
    render json: Product.all.to_json 
  end

  def lazy
    
  end
end
