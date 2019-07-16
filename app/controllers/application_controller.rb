class ApplicationController < ActionController::Base

protect_from_forgery with: :exception #セキュリティ
before_action :authenticate_user!
before_action :configure_permitted_parameters, if: :devise_controller?


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
end


