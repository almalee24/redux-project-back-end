class CreateCompanyOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :company_orders do |t|
      t.references :order, polymorphic: true, null: false
      t.references :user, polymorphic: true, null: false
      t.references :company, polymorphic: true, null: false
      t.string :company_logo
      t.string :company_name
      t.decimal :company_total, precision: 9, scale: 2

      t.timestamps
    end
  end
end
