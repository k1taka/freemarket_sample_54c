class RemoveUserIdFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :user_id, :integer
    remove_column :comments, :item_id, :integer
  end
end
