class RenameLocationToAddressInGreenspaces < ActiveRecord::Migration[7.0]
  def change
    rename_column :greenspaces, :location, :address
  end
end
