class AddDriverIdToRides < ActiveRecord::Migration[8.0]
  def change
    add_reference :rides, :driver, null: true, foreign_key: true
  end
end
