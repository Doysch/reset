class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.references :users, null: false, foreign_key: true
      t.float :rating
      t.references :greenspaces, null: false, foreign_key: true

      t.timestamps
    end
  end
end
