class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :status, :string
    add_column :users, :job_description, :string
    add_column :users, :description, :string
    add_column :users, :income, :integer
    add_column :users, :has_warrantor, :boolean
    add_column :users, :warrantor_income, :integer
    add_column :users, :grade, :string
    add_column :users, :is_landlord, :boolean
  end
end
