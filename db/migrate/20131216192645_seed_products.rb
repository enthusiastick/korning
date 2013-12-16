class SeedProducts < ActiveRecord::Migration
  def change
    Sale.all.each do |sale|
      Product.find_or_create_by name: sale.product_name do |product|
        product.name = sale.product_name
        product.save
      end
    end
  end
end
