class CreateAddresses < ActiveRecord::Migration
  def up
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :line3
      t.string :street
      t.string :location
      t.string :city
      t.string :state
      t.string :country
      t.string :postcode
      t.timestamps
    end

    create_table :accounts do |t|
      t.references :address
      t.string :name      
      t.string :phone_number
      t.string :email_id

    end

    #add a foreign key
    execute <<-SQL
      ALTER TABLE accounts
        ADD CONSTRAINT fk_accounts_contact_address
        FOREIGN KEY (address_id)
        REFERENCES addresses(id)
    SQL
  end

  def down
    drop_table :accounts
    drop_table :addresses
  end
end
