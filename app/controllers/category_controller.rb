class CategoryController < ApplicationController
  #カテゴリー名一覧
  def index
    @category_parent_array =  Category.where(ancestry: nil)
  end

  def show
  end

  #カテゴリーソート
  def search
  end

end