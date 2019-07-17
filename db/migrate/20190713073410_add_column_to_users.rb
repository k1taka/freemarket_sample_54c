class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :prefecture_id, :integer
    add_column :users, :family_name, :string
    add_column :users, :first_name, :string
    add_column :users, :family_name_kana, :string
    add_column :users, :first_name_kana, :string
    add_column :users, :birth_year, :integer
    add_column :users, :birth_month, :integer
    add_column :users, :birth_day, :integer
    add_column :users, :post_code, :string, limit:8
    add_column :users, :address_city , :string
    add_column :users, :address_location, :string
    add_column :users, :address_building, :string
    add_column :users, :address_phone, :integer
  end
end

#not-null birth系cut,

