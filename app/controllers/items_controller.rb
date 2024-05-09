class ItemsController < ApplicationController
  def items
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def sleep
    @items= Item.where(category: "sleep")
  end
  def travel
    @items= Item.where(category: "travel")
  end
  def play
    @items= Item.where(category: "play")
  end
  def feeding
    @items= Item.where(category: "feeding")
  end


end
