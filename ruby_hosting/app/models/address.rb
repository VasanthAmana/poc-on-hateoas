class Address < ActiveRecord::Base
  attr_accessible :city, :country, :line1, :line2, :line3, :location, :postcode, :state, :street
end
