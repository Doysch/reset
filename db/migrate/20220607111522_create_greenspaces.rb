class CreateGreenspaces < ActiveRecord::Migration[7.0]
  def change
    create_table :greenspaces do |t|
      t.string :location
      t.string :description
      t.string :photo
      t.float :average_rating

      t.timestamps
    end
  end
end
