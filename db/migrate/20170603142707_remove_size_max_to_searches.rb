class RemoveSizeMaxToSearches < ActiveRecord::Migration[5.0]
  def change
    remove_column :searches, :size_max
    remove_column :searches, :rent_min
  end
end
