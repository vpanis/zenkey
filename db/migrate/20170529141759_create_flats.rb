class CreateFlats < ActiveRecord::Migration[5.0]
  def change
    create_table :flats do |t|
      t.text :title
      t.text :description
      t.text :rental_type
      t.date :availability_date
      t.integer :min_duration
      t.string :address
      t.boolean :is_address_public
      t.string :subway
      t.boolean :furnished
      t.integer :size
      t.integer :rent
      t.integer :rental_costs
      t.integer :floor
      t.integer :rooms
      t.integer :bedrooms
      t.boolean :balcony
      t.boolean :elevator
      t.boolean :separate_bathroom
      t.boolean :parking
      t.string :status
      t.integer :income_ratio
      t.boolean :has_warrantor
      t.integer :warrantor_income_ratio
      t.integer :desposit
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
