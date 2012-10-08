class CreateMetaVersions < ActiveRecord::Migration
  def up
    create_table :meta_versions do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
  	drop_table :meta_versions
  end
end
