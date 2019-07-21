class CategoryController < ApplicationController
  #カテゴリー名一覧
  def index
    @parents =  Category.all.where(ancestry: nil)
  end

  def show
    @category = Category.find(params[:id])
    @items = Item.all.where(category: params[:id])
  end

  #カテゴリーソート
  def search
  end

end