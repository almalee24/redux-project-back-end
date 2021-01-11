class CreateGoods < ActiveRecord::Migration[6.0]
  def change
    create_table :goods do |t|
      t.text :name
      t.float :weight
      t.float :price

      t.timestamps
    end
  end
end
