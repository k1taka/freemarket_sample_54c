class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.references :user,null: false, foreign_key: true
      t.references :item,null: false, foreign_key: true
    end
  end
end
