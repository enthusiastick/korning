class NormalizeSales2 < ActiveRecord::Migration
  def change
    add_column :sales, :customer_id, :integer

    Sale.all.each do |sale|
      id_number = Customer.select(:id).where('account_number = ?', sale.customer_and_account_no.split[1].delete('(').delete(')')).pluck(:id)[0]
      sale.customer_id = id_number
      sale.save
    end

  end
end
