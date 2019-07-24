class AddMentorToBurpies < ActiveRecord::Migration[5.2]
  def change
    add_column :burpies, :mentor, :string
  end
end
