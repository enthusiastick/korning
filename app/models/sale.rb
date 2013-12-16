class Sale < ActiveRecord::Base
  belongs_to :employee
  belongs_to :product
  belongs_to :customer

  def last_thirteen_months?
    require 'date'
    date = Date.today - 395
    sale_date > date
  end

  def self.limited
    results = []
    self.all.order(:sale_date).each do |sale|
      results << sale if sale.last_thirteen_months?
    end
    results
  end


end
