class AddImageToGood < ActiveRecord::Migration[6.0]
  def change
    add_column :goods, :image, :string
    add_column :companies, :image_logo, :string
    add_column :companies, :image_background, :string
  end
end
