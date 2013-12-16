class NormalizeSales3 < ActiveRecord::Migration
  def change
    add_column :sales, :product_id, :integer

    Sale.all.each do |sale|
      id_number = Product.select(:id).where('name = ?', sale.product_name).pluck(:id)[0]
      sale.product_id = id_number
      sale.save
    end

  end
end
