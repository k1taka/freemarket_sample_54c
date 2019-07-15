class ItemsController < ApplicationController
  require 'payjp'

  #トップページ　商品一覧
  def index

  end

  #商品詳細ページ
  def show
  end

  #商品購入確認ページ
  def confirmation
  end
  
  #商品出品ページ
  def new
    render layout: 'logo'
  end
  
  def create
    redirect_to :index
  end

  def purchase
    Payjp.api_key = PAYJP_SECRET_KEY
    Payjp::Charge.create(
      amount: @item.price,
      card: params['payjp-token'],
      currency: 'jpy'
    )
  end


  private

  def item_params
    params.require(:items).permit(:content, :image).merge(user_id: current_user.id) #permit部分は編集すること
  end

  def set_item
    @item=Item.find(params[:item])  #リファクタリング
  end

end