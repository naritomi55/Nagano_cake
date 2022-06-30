class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @customer = Customer.find(@order.customer_id)
    @status = Order.all
    @status.first
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to admin_order_path(@order.id)

  end

  private

    def order_params
      params.require(:order).permit(:status)
    end

end
