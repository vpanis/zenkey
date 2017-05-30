class ChangeStatusDefaultInFlats < ActiveRecord::Migration[5.0]
  def change
    change_column :flats, :status, :string, default: "Available"
  end
end
