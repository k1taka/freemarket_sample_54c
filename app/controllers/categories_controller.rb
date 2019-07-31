class CategoriesController < ApplicationController
  #カテゴリー名一覧
  def index
  end

  def show
    @category = Category.find(params[:id])
    category_ids = @category.subtree_ids
    @items = Item.where(category: category_ids)
  end

end