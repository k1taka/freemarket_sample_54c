class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
  has_one :credit,dependent: :destroy  # クレジットコントローラを作るため作成
  belongs_to_active_hash :prefecture, optional: true
  has_many :buyed_items, class_name: "Item",foreign_key: "buyer_id"
  has_many :items,foreign_key: "seller_id"
  has_one :foreign_account
  has_many :goods

  def self.from_omniauth(data)
    user_key = ForeignAccount.where(provider: data.provider, uid: data.uid).first
    if user_key != nil
      already_user = user_key.user
      return already_user if already_user
    
    elsif User.where(email: data.info.email) != nil
      add_sns_user = User.find_by(email: data.info.email)
      ForeignAccount.create(
                            user_id: add_sns_user.id,
                            provider: data.provider,
                            uid: data.uid,
                            token: data.credentials.token
                            )
      return add_sns_user if add_sns_user
    else
      new_user = User.create(
                            nickname: data.info['name'],
                            email: data.info['email'],
                            password: Devise.friendly_token[0,20]
                            )
      ForeignAccount.create(
                            user_id: new_user.id,
                            provider: data.provider,
                            uid: data.uid,
                            token: data.credentials.token
                            )
      return new_user if new_user
    end
  end
end
