class CreateWeddings < ActiveRecord::Migration[7.0]
  def change
    create_table :weddings do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.datetime :date_from
      t.datetime :date_to
      t.text :special_request
      t.string :packages

      t.timestamps
    end
  end
end
