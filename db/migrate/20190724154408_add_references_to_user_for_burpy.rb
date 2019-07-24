class AddReferencesToUserForBurpy < ActiveRecord::Migration[5.2]
  def change
    add_column :burpies, :mentor_id, :integer
    add_column :burpies, :student_id, :integer
  end
end
