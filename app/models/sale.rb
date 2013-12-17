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

  def invoice_amount
    if self.invoice_frequency == 'Monthly'
      invoice_amount_rough = self.sale_amount / 12
      invoice_amount = "%.2f" % invoice_amount_rough
    elsif self.invoice_frequency = ''
      invoice_amount_rough = self.sale_amount / 4
      invoice_amount = "%.2f" % invoice_amount_rough
    elsif self.invoice_frequency = ''
      invoice_amount = self.sale_amount
    end
    invoice_amount
  end



end
