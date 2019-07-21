class CategoryController < ApplicationController
  #カテゴリー名一覧
  def index
    @parents =  Category.all.where(ancestry: nil)
  end

  def show
  end

  #カテゴリーソート
  def search
  end

end