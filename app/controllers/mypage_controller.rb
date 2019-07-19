class MypageController < ApplicationController
  before_action :set_user

  def profile
  end

  def profile_update
    redirect_to action: "profile"
  end

  def address
  end

  def address_update
    redirect_to action: "address"
  end

  def pay_way
  end

  def pay_way_update
    redirect_to action: "pay_way"
  end

  def mail_password
    redirect_to action: "mail_password"
  end

  def mail_password_update
  end


  private
  
  def set_user
    @user = User.find(current_user.id)
  end

end


