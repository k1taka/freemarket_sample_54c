class AddPasswordConfirmedToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :password_confirmed, :string
  end
end
