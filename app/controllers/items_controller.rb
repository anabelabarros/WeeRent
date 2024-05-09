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
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to @item, notice: 'Product was sucessfully listed'
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    if @item.update(item_params)
      redirect_to @item, notice: 'Product was successfully updated'
    else
      render :edit
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def item_params
    params.require(:item).permit(:name, :description, :price, :category)
  end

  def booked?
    bookings_count > 0
  end

end
