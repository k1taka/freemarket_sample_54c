class AddStatusToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :status, :integer,default: 0
    add_index  :items,:status
    add_column :items,:seller_id,:integer,foreign_key:true
    add_index  :items,:seller_id
    add_column :items,:buyer_id,:integer
    add_index  :items,:buyer_id
  end
end
