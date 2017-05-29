class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.references :flat, foreign_key: true
      t.datetime :starts_at
      t.integer :length
      t.integer :slot_length

      t.timestamps
    end
  end
end
