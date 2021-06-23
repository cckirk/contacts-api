class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.float :latitude
      t.float :longitude
      t.string :street
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
