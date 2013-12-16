class SeedEmployees < ActiveRecord::Migration
  def change
    Sale.all.each do |sale|
      Employee.find_or_create_by email: sale.employee.split[2].delete('(').delete(')') do |employee|
        employee.firstname = sale.employee.split[0]
        employee.lastname = sale.employee.split[1]
        employee.save
      end
    end
  end
end
