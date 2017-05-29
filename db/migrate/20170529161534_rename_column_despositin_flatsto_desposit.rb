class RenameColumnDespositinFlatstoDesposit < ActiveRecord::Migration[5.0]
  def change
    rename_column :flats, :desposit, :deposit
  end
end
