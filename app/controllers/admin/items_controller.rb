class Admin::ItemsController < ApplicationController
  def index
    @items = Item.page(params[:page])
  end

  def new
    @item = Item.new
    @genres = Genre.all
    @genres.first
  end

  def create
    item = Item.new(item_params)
    if item.save
      redirect_to admin_item_path(item.id)
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
    @genres = Genre.all
    @genres.first
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to admin_item_path(@item.id)
  end

  private
    def item_params
      params.require(:item).permit(:name, :introduction, :genre_id, :price, :image, :is_active)
    end
end
