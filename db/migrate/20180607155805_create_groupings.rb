class CreateGroupings < ActiveRecord::Migration[5.2]
  def change
    create_table :groupings do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
