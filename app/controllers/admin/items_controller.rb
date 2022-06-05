class Admin::ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.new(item_params)
    if item.save
      redirect_to admin_items_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  private
    def item_params
      params.require(:item).permit(:name, :introduction, :genre_id, :price, :is_active)
    end
end