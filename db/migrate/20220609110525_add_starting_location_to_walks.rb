class AddStartingLocationToWalks < ActiveRecord::Migration[7.0]
  def change
    add_column :walks, :starting_location, :string
  end
end
