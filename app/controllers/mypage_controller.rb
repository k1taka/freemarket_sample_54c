class MypageController < ApplicationController
  before_action :set_user

  def profile
  end

  def profileupdate
    if @user.update(profile_update)
      redirect_to action: :profile
    else
      render :profile
    end
  end

  def address
  end

  def address_update
    redirect_to action: "address"
  end

  def pay_way
    #購入画面からのページ遷移の場合、購入ページに戻るようにする
    @path = Rails.application.routes.recognize_path(request.referer)
      
  end

  def pay_way_update
    redirect_to controller: :items, action: :confirmation
    # redirect_back(fallback_location: root_path) #直前にいたページに戻る
  end

  def mail_password
  end

  def mail_password_update
  end


  private
  
  def set_user
    @user = User.find(current_user.id)
  end

  def profile_update
    params.require(:user).permit(:nickname,:introduction )
  end

end


