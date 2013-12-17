class SeedCustomers < ActiveRecord::Migration
  def change
    Sale.all.each do |sale|
      Customer.find_or_create_by account_number: sale.customer_and_account_no.split[1].delete('(').delete(')') do |customer|
        customer.name = sale.customer_and_account_no.split[0]
        customer.account_number = sale.customer_and_account_no.split[1].delete('(').delete(')')
        customer.save
      end
    end
  end
end
