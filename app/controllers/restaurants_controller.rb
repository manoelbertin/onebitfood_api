class RestaurantsController < ApplicationController
  def index
    @restaurants = restaurants.all
  end

  def show
  end
end
