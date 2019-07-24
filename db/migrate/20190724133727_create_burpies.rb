class CreateBurpies < ActiveRecord::Migration[5.2]
  def change
    create_table :burpies do |t|
      t.string :reason
      t.string :person

      t.timestamps
    end
  end
end
