class ChangeDatetimeInSlots < ActiveRecord::Migration[5.0]
  def change
    remove_column :slots, :starts_at
    add_column :slots, :starts_at, :datetime
  end
end
