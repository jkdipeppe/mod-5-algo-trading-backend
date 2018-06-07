class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :account_id
      t.decimal :quantity
      t.decimal :price
      t.boolean :limit
      t.string :trading_pair

      t.timestamps
    end
  end
end
