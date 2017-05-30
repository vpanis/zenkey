class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :address
      t.integer :size_min
      t.integer :size_max
      t.integer :rent_min
      t.integer :rent_max
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
