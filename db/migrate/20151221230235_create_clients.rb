class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :status
      t.string :fullname
      t.string :lastname
      t.string :phone
      t.string :address

      t.timestamps null: false
    end
  end
end
