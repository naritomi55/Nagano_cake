class Public::ItemsController < ApplicationController

  def index
    @genres = Genre.all
    if params[:genre_id]
      genre = Genre.find(params[:genre_id])
      @text = genre.name
      @items = genre.items.page(params[:page])
    else
      @text = '商品'
      @items = Item.page(params[:page])
    end
  end

  def show
    @genres = Genre.all
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end
end
