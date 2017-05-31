class ChangeGradeToUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :grade
    add_column :users, :grade, :integer, default: 0
  end
end
