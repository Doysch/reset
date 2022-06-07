class AddNameToGreenspaces < ActiveRecord::Migration[7.0]
  def change
    add_column :greenspaces, :name, :string
  end
end
