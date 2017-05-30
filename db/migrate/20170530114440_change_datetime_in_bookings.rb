class ChangeDatetimeInBookings < ActiveRecord::Migration[5.0]
  def change
    change_column :bookings, :starting_date, :datetime
    change_column :bookings, :end_date, :datetime
  end
end
