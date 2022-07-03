class Public::HomesController < ApplicationController
  def top
    @items = Item.limit(4).order("id DESC")
    @genres = Genre.all
  end

  def about
  end
end
