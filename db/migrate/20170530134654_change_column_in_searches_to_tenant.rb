class ChangeColumnInSearchesToTenant < ActiveRecord::Migration[5.0]
  def change
    rename_column :searches, :user_id, :tenant_id
  end
end
