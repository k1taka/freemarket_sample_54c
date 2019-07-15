class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string     :name, null:false
      t.text       :description,null:false   
      t.references :category,null:false
      t.integer    :size_id #ok
      t.string     :brand
      t.integer :condition_id, null:false #ok
      t.integer :shipping_payer_id, null:false #ok
      t.references :shipping_way, null:false 
      t.integer :shipping_address_id, null: false #ok
      t.integer :shipping_day_id, null: false
      t.integer    :price, null: false
      # t.references :seller, class_name: "user", through: :purchase ,foreign_key:true
      # t.references :buyer, class_name: "user", through: :purchase ,foreign_key:true
      t.timestamps
    end
  end
end
