class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.decimal :total
      t.integer :user_id
      t.string :status

      t.timestamps
    end
  end
end
