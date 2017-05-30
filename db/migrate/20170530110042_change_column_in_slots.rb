class ChangeColumnInSlots < ActiveRecord::Migration[5.0]
  def change
    rename_column :slots, :user_id, :tenant_id
    change_column :slots, :status, :string, default: "Vacant"
  end
end
