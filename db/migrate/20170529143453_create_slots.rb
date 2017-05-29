class CreateSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :slots do |t|
      t.references :availability, foreign_key: true
      t.references :user, foreign_key: true
      t.time :starts_at
      t.string :status

      t.timestamps
    end
  end
end
