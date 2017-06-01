class RenameColumnAvailabilityInSlotsToFlat < ActiveRecord::Migration[5.0]
  def change
    remove_column :slots, :availability_id
    add_reference :slots, :flat, foreign_key: true

    #add_foreign_key :slots, :flat, column: :flat_id
  end
end
