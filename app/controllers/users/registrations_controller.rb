# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  prepend_before_action :check_captcha, only: [:create] 
  before_action :configure_account_update_params, only: [:update]

  def index
    
  end

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    super
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :name,:family_name,:first_name,:family_name_kana,:first_name_kana,
      :birth_year,:birth_month,:birth_day,:post_code,:nickname,:address_city ,
      :address_building,:prefecture_id
    ])
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

    private
      def check_captcha
        unless verify_recaptcha
          self.resource = resource_class.new sign_up_params
          resource.validate # Look for any other validation errors besides Recaptcha
          set_minimum_password_length
          respond_with resource
        end 
      end
  end 


