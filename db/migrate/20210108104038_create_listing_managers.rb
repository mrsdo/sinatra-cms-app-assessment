class CreateListingManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :listing_managers do |t|
      t.string :name
      t.string :tag_name
      t.string :status
      t.date :first_listed_date
      t.integer :num_bedrooms
      t.integer :num_bathrooms
      t.string :summary
      t.integer :sq_footage
      t.integer :asking_price
      t.string :photos1
      t.string :photos2
      t.string :photos3
      t.string :photos4
      t.string :agent
      t.string :phone
      t.string :company

      t.timestamps null: false
    end
  end
end
