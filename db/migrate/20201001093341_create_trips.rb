class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :country
      t.integer :days
      t.date :trip_date

      t.timestamps
    end
  end
end
