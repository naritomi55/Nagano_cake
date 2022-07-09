class Admin::OrderDetailsController < ApplicationController

  def update
    @order_detail = OrderDetail.find(params[:id])
    @order = @order_detail.order
    @order_detail.update(order_detail_params)
    if
      @order_detail.making_status == "c"
      @order.update(status: "c")
    elsif
      @order_detail.making_status == "d"
      @order.update(status: "d")
    end
    redirect_to admin_order_path(@order_detail.order.id)
  end

  private
    def order_detail_params
      params.require(:order_detail).permit(:making_status)
    end

end
