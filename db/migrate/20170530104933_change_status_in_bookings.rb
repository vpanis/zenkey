class ChangeStatusInBookings < ActiveRecord::Migration[5.0]
  def change
    change_column :bookings, :status, :string, default: "Pending"
  end
end
