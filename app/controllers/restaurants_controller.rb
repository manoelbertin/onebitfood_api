class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: :show
  
  def index
    @restaurants = Restaurant.all
    filter_by_name if params[:name]
    filter_by_city if params[:city]
    filter_by_category if params[:category]
  end

  def show
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def filter_by_name
    @restaurants = @restaurants.where("name ILIKE ?", "%#{params[:name]}%")
  end

  def filter_by_city
    @restaurants = @restaurants.where(city: params[:city])
  end

  def filter_by_category
    @restaurants = @restaurants.select do |r|
      r.category.title == params[:category]
    end
  end

end
