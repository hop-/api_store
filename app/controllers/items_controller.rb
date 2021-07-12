require "#{Rails.root}/lib/api_errors/not_found"

class ItemsController < ApplicationController
  def index
    items = Item.order("created_at DESC")

    render json: items
  end

  def show
    item = Item.find_by_id(params[:id])
    if item.blank?
      raise ApiErrors::NotFound.new("Couldn't find item with id '#{params[:id]}'", 'item')
    end

    render json: item
  end

  def create
    item = Item.create!(item_params)

    render json: item
  end

  def update
    item = Item.find_by_id(params[:id])
    if item.blank?
      raise ApiErrors::NotFound.new("Couldn't find item with id '#{params[:id]}'", 'item')
    end

    item.update(item_params)

    render json: item
  end

  def destroy
    item = Item.find_by_id(params[:id])
    if item.blank?
      raise ApiErrors::NotFound.new("Couldn't find item with id '#{params[:id]}'", 'item')
    end
    
    item.destroy

    head :no_content, status: :ok
  end

  private
    def item_params
      params.require(:item).permit(:name, :short_description, :description, :count, :price)
    end
end
