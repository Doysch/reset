class CreateWalks < ActiveRecord::Migration[7.0]
  def change
    create_table :walks do |t|
      t.references :users, null: false, foreign_key: true
      t.references :greenspaces, null: false, foreign_key: true
      t.string :music
      t.text :notes
      t.integer :stress_level_before
      t.integer :stress_level_after

      t.timestamps
    end
  end
end
