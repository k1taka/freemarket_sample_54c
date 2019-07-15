class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :prefecture_id, :integer
    add_column :users, :family_name, :string, null:false
    add_column :users, :first_name, :string, null:false
    add_column :users, :family_name_kana, :string, null:false
    add_column :users, :first_name_kana, :string, null:false
    add_column :users, :birth_year, :date
    add_column :users, :birth_month, :date
    add_column :users, :birth_day, :date
    add_column :users, :post_code, :string, limit:8, null:false
    add_column :users, :address_city , :string, null:false
    add_column :users, :address_building, :string, null:false
  end
end

#not-null birth系cut, prefecture_id cut

