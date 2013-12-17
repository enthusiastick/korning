class RemoveColumnsFromSales < ActiveRecord::Migration
  def change
    remove_column :sales, :employee, :string
    remove_column :sales, :customer_and_account_no, :string
    remove_column :sales, :product_name, :string
  end
end
