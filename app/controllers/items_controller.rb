class ItemsController < ApplicationController
  def index
    @items = Item.all
    render :index
  end

  def create
    @item = Item.create(
      name: params[:name],
      category: params[:category],
      lives_at: params[:lives_at],
      best_by: params[:best_by],
    )
    render :show
  end

  def update
    @item = Item.find_by(id: params[:id])
    @item.update(
      name: params[:name] || @item.name,
      category: params[:category] || @item.category,
      lives_at: params[:lives_at] || @item.lives_at,
      best_by: params[:best_by] || @item.best_by,
    )
    render :show
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy
    render json: { message: "Item destroyed successfully" }
  end
end
