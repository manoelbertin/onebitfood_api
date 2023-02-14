class OrdersController < ApplicationController
  before_action :set_order, only: :show
  
  def create
    order = Order.new(order_params)
    if order.save
      render json: @order, status: :created
    else
      render json: order.errors, status: :unprocessable_entity
  end

  def show end;

  private

  def set_order
    @order = Order.find(params[:id])
  end
end
