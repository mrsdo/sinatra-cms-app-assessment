class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.varchar :name
      t.varchar :address
      t.varchar :logo
      t.varchar :agents
      t.varchar :listings

      t.timestamps null: false
    end
  end
end
