class CreateKits < ActiveRecord::Migration[5.2]
  def change
    create_table :kits do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_reference :bags, :kit, foreign_key: true
  end
end
