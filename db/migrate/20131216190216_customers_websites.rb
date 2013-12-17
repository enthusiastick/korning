class CustomersWebsites < ActiveRecord::Migration
  def change

    lg = Customer.where(name: 'LG').first
    lg.website_url = 'www.lg.com'
    lg.save

    htc = Customer.where(name: 'HTC').first
    htc.website_url = 'www.htc.com/us'
    htc.save

    nokia = Customer.where(name: 'Nokia').first
    nokia.website_url = 'www.nokia.com'
    nokia.save

    samsung = Customer.where(name: 'Samsung').first
    samsung.website_url = 'www.samsung.com'
    samsung.save

    motorola = Customer.where(name: 'Motorola').first
    motorola.website_url = 'www.motorola.com'
    motorola.save

    apple = Customer.where(name: 'Apple').first
    apple.website_url = 'www.apple.com'
    apple.save

  end
end
