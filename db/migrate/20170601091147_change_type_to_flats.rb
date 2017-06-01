class ChangeTypeToFlats < ActiveRecord::Migration[5.0]
  def change
    change_column :flats, :title, :string
    change_column :flats, :rental_type, :string
  end
end
