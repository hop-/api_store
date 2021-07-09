class ItemsController < ApplicationController
  def index
    items = Item.order("created_at DESC")

    render json: items
  end

  def show
    item = Item.find(params[:id])

    render json: item
  end

  def create
    item = Item.create(item_params)

    render json: item
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)

    render json: item
  end

  def destroy
    Item.find(params[:id]).destroy

    head :no_content, status: :ok
  end

  private
    def item_params
      params.require(:item).permit(:name, :short_description, :description, :count, :price)
    end
end
