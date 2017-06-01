class AddLengthToSlots < ActiveRecord::Migration[5.0]
  def change
    change_column :slots, :length, :integer, default: 0
  end
end
