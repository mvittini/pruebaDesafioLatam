class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :typeaccount
      t.text :description
      t.integer :balance
      t.integer :finalbalance

      t.timestamps null: false
    end
  end
end
