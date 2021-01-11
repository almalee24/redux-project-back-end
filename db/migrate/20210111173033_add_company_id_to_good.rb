class AddCompanyIdToGood < ActiveRecord::Migration[6.0]
  def change
    add_column :goods, :company_id, :integer 
  end
end
