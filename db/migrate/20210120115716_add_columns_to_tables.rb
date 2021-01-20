class AddColumnsToTables < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :total_qty, :integer
    add_column :goods, :image_two, :string
    add_column :goods, :image_three, :string
    add_column :goods, :description, :string
    add_column :goods, :sale, :boolean 
    add_column :users, :admin, :boolean
  end
end
