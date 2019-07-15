class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  has_many :images
  accepts_nested_attributes_for :images
  belongs_to_active_hash :size
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :shipping_way
  belongs_to_active_hash :shipping_payer
  belongs_to_active_hash :shipping_address
  belongs_to_active_hash :shipping_day
  belongs_to_active_hash :condition

  
  validates :name,presence: true
  validates :description,presence: true
  validates :size_id,presence: true
  validates :condition_id,presence: true
  validates :shipping_payer_id,presence: true
  validates :shipping_way_id,presence: true
  validates :shipping_address_id,presence: true
  validates :shipping_day_id,presence: true
  validates :price,presence: true
  # validates :category,presence: true
  # validates :image,presence: true
  belongs_to :category
end