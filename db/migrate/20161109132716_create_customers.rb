class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :street
      t.string :suburb
      t.string :postcode

      t.timestamps
    end
  end
end
