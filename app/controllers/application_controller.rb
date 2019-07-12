class ApplicationController < ActionController::Base

protect_from_forgery with: :exception #セキュリティ
# before_action :authenticate_user!  サインイン完成させないとログインできないはず。
before_action :configure_permitted_parameters, if: :devise_controller?


  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])#カラムを増やすこと    
  end
end
