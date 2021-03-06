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
  has_many :comments
  has_many :items, through: :comments
  has_one :foreign_account
  has_many :goods
  mount_uploader :image, ImageUploader


  def self.from_omniauth(data)
    user_key = ForeignAccount.where(provider: data.provider, uid: data.uid).first
    # ユーザー情報があるか確認
    if user_key != nil
      already_user = user_key.user
      return already_user if already_user
    #メールアドレスでの登録があれば、関連付け
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
      #そもそもユーザー情報ない場合
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

  #validate
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
end
