class AddDefaultToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :income, :integer, default: 0
    change_column :users, :has_warrantor, :boolean, default: false
    change_column :users, :warrantor_income, :integer, default: 0
    change_column :users, :is_landlord, :boolean, default: false
  end
end
