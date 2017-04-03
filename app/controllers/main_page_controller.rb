class MainPageController < ApplicationController

  def index
  end

  def create
    @order = Order.new order_params

    if @order.valid?
      @order.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def order_params
    params.require(:order).permit(:company, :name, :email,  :number, :text)
  end

end
