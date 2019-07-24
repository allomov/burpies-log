class AddUserIdToBurpy < ActiveRecord::Migration[5.2]
  def change
    add_column :burpies, :user_id, :integer
  end
end
