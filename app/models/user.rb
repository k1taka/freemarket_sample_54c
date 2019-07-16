class User < ApplicationRecord
  # extend ActiveHash::Associations::ActiveRecordExtensions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
  has_one :credit,dependent: :destroy  # クレジットコントローラを作るため作成
  has_many :buyed_items, class_name: "Item",foreign_key: "buyer_id"
  has_many :items,foreign_key: "seller_id"
end
