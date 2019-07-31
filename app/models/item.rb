class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  has_many :goods
  has_many :images , dependent: :destroy
  accepts_nested_attributes_for :images
  belongs_to_active_hash :size,optional: true
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :shipping_way
  belongs_to_active_hash :shipping_payer
  belongs_to_active_hash :shipping_address
  belongs_to_active_hash :shipping_day
  belongs_to_active_hash :condition
  belongs_to :category,optional: true
  belongs_to :seller, class_name: "User"
  belongs_to :buyer, class_name: "User",optional: true
  enum status: {selling_item: 0, sold_item: 1, pause_item: 2}
  
  validates :name,presence: true
  validates :description,presence: true
  validates :condition_id,presence: true
  validates :shipping_payer_id,presence: true
  validates :shipping_way_id,presence: true
  validates :shipping_address_id,presence: true
  validates :shipping_day_id,presence: true
  validates :price,presence: true,numericality: true
  validates :category_id,presence: true
  validates :size_id,presence: true,if: :need_size?
  validates :status, presence: true


  #sizeはcategoryによって、nilで構わない
  def need_size?
    if category
    categories =[15,16,17,18,20,21,29,30,33,34,35,38,43,44,45]
    return categories.any? {|c| c == category.parent.id}
    end
  end

end