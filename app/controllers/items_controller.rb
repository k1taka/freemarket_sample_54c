class ItemsController < ApplicationController
  before_action :set_item_new,only: [:new,:create]
  before_action :set_item,only: [:show,:confirmation,:pay]

  #トップページ 商品一覧
  def index
    @items = Item.all.order("created_at DESC").limit(20)
   
  end

  #商品詳細ページ
  def show
    @item =Item.find(params[:id])
  end

  #商品購入確認ページ
  def confirmation
    @item = Item.find(params[:id])
    @user = User.find(current_user.id)
  end

  # クレジットカード決済のカード情報記入＆購入確定ページ
  def pay
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(
      amount: @item.price, # 決済する値段
      card: params['payjp-token'],
      currency: 'jpy'
    )
    @item.update(buyer_id: current_user.id, status: params[:status])
    redirect_to action: index
  end
  
  #商品出品ページ
  def new
    @item = Item.new
    @item.images.build
    @category_parent_array =  Category.where(ancestry: nil)
    render layout: 'logo'
  end
  
  def create
    @item =Item.new(item_params)
    respond_to do |format|
      if @item.save
          image_params[:images].each do |image|
            item_image = @item.images.new(image: image)
            item_image.save
          end
          format.json
      else
        # エラー表示実装すること。
        render :new
      end
    end
  end

  #商品編集ページ
  def edit
    @item=Item.find(params[:id])
  end

  def update
    
  end
  
  #出品ページ
  def get_category_children
    @category_children = Category.find("#{params[:parent_id]}").children
  end

  def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :description, :size_id,:brand,:condition_id,:shipping_payer_id,:shipping_way_id,:shipping_address_id,:shipping_day_id,:category_id,:price).merge(seller_id: current_user.id)
  end

  def image_params
    # ajax通信
    params.require(:image).permit({images:[]})
  end


  def update_item_params
    params.require(:item).permit(:name, :description, :size_id,:brand,:condition_id,:shipping_payer_id,:shipping_way_id,:shipping_address_id,:shipping_day_id,:price,images_attributes:[:image,:_destroy,:id])
  end

  def set_item_new #createにも必要 validateでエラーが出る
    @category_parent_array =  Category.where(ancestry: nil)
    @sizes = Size.all
    @conditions = Condition.all
    @shipping_payers = ShippingPayer.all
    @shipping_way = ShippingWay.all
    @shipping_address = ShippingAddress.all
    @shipping_day = ShippingDay.all
  end

end