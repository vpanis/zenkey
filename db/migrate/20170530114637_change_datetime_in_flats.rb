class ChangeDatetimeInFlats < ActiveRecord::Migration[5.0]
  def change
    change_column :flats, :availability_date, :datetime
  end
end
