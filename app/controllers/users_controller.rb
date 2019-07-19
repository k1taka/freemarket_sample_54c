class UsersController < ApplicationController

  # ユーザーページ
  def index
  end

  # 出品中のアイテム
  def posting_item
    # @items =Item.selling_item
  end

  # 売却済みのアイテム
  def sold_item
    # @items =Item.sold_item
  end

  # 購入済みアイテム
  def buyed_item
    # @items = User.buyed_item
  end
  
  # 本人情報確認
  def show
  end

  #プロフィール編集
  def edit
  end

  def update
  end

  #ログアウトページ 飛ぶページの予定
  def logout
  end
  
  def delete
  end

  
end
