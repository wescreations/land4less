class AddPropertiesTableAgain < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string  :name
      t.string  :address_1
      t.string  :address_2
      t.string  :city
      t.string  :state
      t.string  :zip
  	  t.string 	:size
  	  t.string 	:price
  	  t.string 	:apn
      t.string  :status
  	  t.string 	:coordinates
  	  t.string 	:acre
  	  t.string 	:monthly_payment
  	  t.string 	:price_group
  	  t.string 	:description
    end
  end
end
