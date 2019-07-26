class ChangeDateToUsers < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :address_phone, :bigint
  end
end
