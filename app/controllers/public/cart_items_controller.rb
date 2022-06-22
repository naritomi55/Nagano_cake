class Public::CartItemsController < ApplicationController

  def index
    @cart_items = CartItem.all
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id
    @cart_item.save
    redirect_to cart_items_path(current_customer)
  end

  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(cart_item_params)
    redirect_to cart_items_path(current_customer)
  end

  def destroy

  end

  def destroy_all

  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:item_id, :amount)
  end

end