class ApplicationController < ActionController::Base

protect_from_forgery with: :exception #セキュリティ
before_action :authenticate_user! , except: [:index,:show]
before_action :basic_auth , if: :production?
before_action :configure_permitted_parameters, if: :devise_controller?
before_action :category_field
before_action :set_search #ヘッダーの検索機能

def set_search
  @search = Item.ransack(params[:q])
  @search_items = @search.result.order("created_at DESC").limit(20)
end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
                                      :name,:family_name,:first_name,
                                      :family_name_kana,:first_name_kana,
                                      :birth_year,:birth_month,:birth_day,
                                      :post_code,:nickname,:address_city ,
                                      :address_location,:address_building,
                                      :address_phone,:prefecture_id,
                                      ])#カラム１日増やす    
  end

  private

  def category_field
    @parents =  Category.where(ancestry: nil)
  end

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == "#{Rails.application.credentials.basic_auth[:user]}" && "#{password == Rails.application.credentials.basic_auth[:password]}"
    end
  end
  
end
