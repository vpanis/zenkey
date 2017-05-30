class ChangeColumnUserInFlatsToLandlord < ActiveRecord::Migration[5.0]
  def change
    rename_column :flats, :user_id, :landlord_id
  end
end
