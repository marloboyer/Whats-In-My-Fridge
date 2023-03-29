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
end
