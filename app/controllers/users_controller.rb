class UsersController < ApplicationController
  before_action :set_user,only: [:index,:posting_item,:sold_item,:buyed_item]
  # ユーザーページ
  def index
    @items = @user.buyed_items
  end

  # 出品中のアイテム
  def posting_item
    @items =Item.selling_item.where(seller_id:current_user.id)
  end

  # 売却済みのアイテム
  def sold_item
    @items =Item.sold_item.where(seller_id:current_user.id)
  end

  # 購入済みアイテム
  def buyed_item
    @items = @user.buyed_items
  end
  
  # 本人情報確認
  def show
  end

  #プロフィール編集 使用予定なし
  def edit
  end

  def update
  end

  #ログアウトページ 飛ぶページの予定
  def logout
  end
  
  def delete
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end
  
end
