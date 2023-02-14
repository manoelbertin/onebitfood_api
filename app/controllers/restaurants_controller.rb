class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: :show
  
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def filter_by_query
    
  end

end
