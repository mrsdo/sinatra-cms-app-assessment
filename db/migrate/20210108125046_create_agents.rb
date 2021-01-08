class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :company
      t.string :phone
      t.string :listings

      t.timestamps null: false
    end
  end
end
