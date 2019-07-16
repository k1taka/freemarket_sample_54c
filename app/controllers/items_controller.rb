class ItemsController < ApplicationController
  before_action :set_item_new,only: [:new,:create]

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
    @item = Item.new
    @item.images.build
    @category_parent_array = ["---"]
    Category.where(ancestry: nil).each do|parent|
      @category_parent_array << parent.name
    end
    render layout: 'logo'
  end
  
  def create
    @item =Item.new(item_params)
  if @item.save
    redirect_to root_path, notice: 'グループを作成しました'
  else
    # エラー表示実装すること。
    render :new
  end
  end
  
  #出品ページ
  def get_category_children
    @category_children = Category.find_by(name:"#{params[:parent_name]}",ancestry: nil).children
  end

  def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :size_id,:brand,:condition_id,:shipping_payer_id,:shipping_way_id,:shipping_address_id,:shipping_day_id,:category_id,:price,images_attributes:[:image])
    #.merge(user_id: current_user.id)
    #:  seller_id
  end

  def update_item_params
    params.require(:item).permit(:name, :description, :size_id,:brand,:condition_id,:shipping_payer_id,:shipping_way_id,:shipping_address_id,:shipping_day_id,:price,images_attributes:[:image,:_destroy,:id])
    #.merge(user_id: current_user.id)
    #:category  :image seller_id
  end

  def set_item_new #createにも必要　validateでエラーが出る
    @sizes = Size.all
    @conditions = Condition.all
    @shipping_payers = ShippingPayer.all
    @shipping_way = ShippingWay.all
    @shipping_address = ShippingAddress.all
    @shipping_day = ShippingDay.all
    @categories=Category.all
  end

end