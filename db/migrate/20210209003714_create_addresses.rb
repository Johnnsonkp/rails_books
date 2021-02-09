class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :street_number
      t.string :street
      t.string :postcode
      t.string :city
      t.string :state
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
