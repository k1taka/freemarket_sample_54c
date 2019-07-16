class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  has_many :images , dependent: :destroy
  accepts_nested_attributes_for :images
  belongs_to_active_hash :size
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :shipping_way
  belongs_to_active_hash :shipping_payer
  belongs_to_active_hash :shipping_address
  belongs_to_active_hash :shipping_day
  belongs_to_active_hash :condition
  belongs_to :category
  belongs_to :saler, class_name: "User"
  belongs_to :buyer, class_name: "User"
  enum status: [:selling_item,:sold_item]
  
  validates :name,presence: true
  validates :description,presence: true
  validates :size_id,presence: true
  validates :condition_id,presence: true
  validates :shipping_payer_id,presence: true
  validates :shipping_way_id,presence: true
  validates :shipping_address_id,presence: true
  validates :shipping_day_id,presence: true
  validates :price,presence: true
  validates :category_id,presence: true
  # validates :image,presence: true
end