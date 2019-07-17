class User < ApplicationRecord
  devise :trackable, :omniauthable, omniauth_providers: [:google_oauth2]
  # extend ActiveHash::Associations::ActiveRecordExtensions
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
  has_one :credit,dependent: :destroy  # クレジットコントローラを作るため作成
  has_many :buyed_items, class_name: "Item",foreign_key: "buyer_id"
  has_many :items,foreign_key: "seller_id"

  # def self.from_omniauth(access_token)
  #   data = access_token.info
  #   user = User.where(email: data['email']).first

  #   # Uncomment the section below if you want users to be created if they don't exist
  #   unless user
  #     binding.pry
  #       user = User.create(nickname: data['name'],
  #          email: data['email'],
  #          password: Devise.friendly_token[0,20]
  #       )
  #   end
  #   user
  # end
end
