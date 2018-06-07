class CreateTiles < ActiveRecord::Migration[5.2]
  def change
    create_table :tiles do |t|
      t.belongs_to :phrase
      t.belongs_to :bag

      t.timestamps
    end
  end
end
