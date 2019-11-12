class CreateHardElements < ActiveRecord::Migration[6.0]
  def change
    create_table :hard_elements do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
