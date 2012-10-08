class CreateMetaServices < ActiveRecord::Migration
  def up
    create_table :meta_services do |t|
      t.string :base_url
      t.string :name
      t.text :description
      t.timestamps
    end
  end

  def down
  	drop_table :meta_services
  end
end
