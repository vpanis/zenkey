class AddPhoneToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :birth_year, :integer
    remove_column :users, :job_description
    change_column :users, :description, :text
    add_column :users, :warrantor_type, :string
  end
end
