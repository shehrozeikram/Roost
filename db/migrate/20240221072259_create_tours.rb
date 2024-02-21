class CreateTours < ActiveRecord::Migration[7.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :email
      t.datetime :date
      t.string :destination
      t.text :special_request

      t.timestamps
    end
  end
end
