class NormalizeSales1 < ActiveRecord::Migration
  def change
    add_column :sales, :employee_id, :integer

    Sale.reset_column_information

    Sale.all.each do |sale|
      id_number = Employee.select(:id).where('email = ?', sale.employee.split[2].delete('(').delete(')')).pluck(:id)[0]
      sale.employee_id = id_number
      sale.save
    end

  end
end
