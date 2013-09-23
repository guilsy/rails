class AddUserIdToPinns < ActiveRecord::Migration
  def change
    add_column :pinns, :user_id, :integer
    add_index :pinns, :user_id
  end
end
