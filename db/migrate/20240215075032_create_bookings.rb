class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.datetime :time
      t.string :rooms
      t.text :special_request

      t.timestamps
    end
  end
end
