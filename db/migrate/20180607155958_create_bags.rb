class CreateBags < ActiveRecord::Migration[5.2]
  def change
    create_table :bags do |t|
      t.belongs_to :grouping
      t.string :color

      t.timestamps
    end
  end
end
