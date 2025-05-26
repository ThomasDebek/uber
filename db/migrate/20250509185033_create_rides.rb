class CreateRides < ActiveRecord::Migration[8.0]
  def change
    create_table :rides do |t|
      t.string :pickup_location
      t.string :dropoff_location
      t.belongs_to :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
