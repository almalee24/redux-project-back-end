class AddColumnsToOrderItem < ActiveRecord::Migration[6.0]
  def change
    add_column :order_items, :good_name, :string
    add_column :order_items, :good_weight, :string
    add_column :order_items, :good_image, :string
    add_column :order_items, :company_name, :string
    add_column :order_items, :company_logo, :string
  end
end
