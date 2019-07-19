class CreateForeignAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :foreign_accounts do |t|
      t.string :provider, null: false, unique: true
      t.string :uid, null: false, unique: true
      t.string :token, null: false, unique: true
      t.references :user,foreign_key: true
    end
  end
end
