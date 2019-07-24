class CategoriesController < ApplicationController
  #カテゴリー名一覧
  def index
  end

  def show
    @category = Category.find(params[:id])
    @items = Item.where(category: params[:id])
  end

end