class SeedEmployee < ActiveRecord::Migration
  def change
    Sale.all.each do |sale|
      Employee.find_or_create_by email: sale.employee.split[2].delete('(').delete(')')
      Employee.firstname = sale.employee.split[0]
      Employee.lastname = sale.employee.split[1]
      Employee.save
    end
  end
end
