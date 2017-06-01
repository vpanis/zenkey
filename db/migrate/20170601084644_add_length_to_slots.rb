class AddLengthToSlots < ActiveRecord::Migration[5.0]
  def change
    add_column :slots, :length, :integer, default: 0
  end
end
