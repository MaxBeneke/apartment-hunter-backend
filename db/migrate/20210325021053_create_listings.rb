class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.integer :price
      t.string :address
      t.integer :square_feet
      t.integer :beds
      t.integer :baths

      t.timestamps
    end
  end
end
