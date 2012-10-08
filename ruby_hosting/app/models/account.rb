class Account < ActiveRecord::Base
  attr_accessible :name, :address, :phone_number, :email_id
end