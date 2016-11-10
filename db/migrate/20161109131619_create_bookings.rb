class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :cleaning_type
      t.integer :bedrooms
      t.integer :bathrooms
      t.boolean :in_win
      t.boolean :out_win
      t.boolean :fridge
      t.boolean :balcony
      t.date :date
      t.time :time
      t.string :street
      t.string :suburb
      t.string :postcode
      t.string :name
      t.string :email
      t.references :customer

      t.timestamps
    end
  end
end
