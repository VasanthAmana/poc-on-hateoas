class CreateMetaProperties < ActiveRecord::Migration
  def up
    create_table :meta_properties do |t|
      t.belongs_to :meta_model
      t.string :name
      t.text :description
      t.string :type
      t.boolean :nullable

      t.timestamps
    end

    #add a foreign key
    execute <<-SQL

      ALTER TABLE meta_properties
        ADD CONSTRAINT fk_meta_properties_model
        FOREIGN KEY (meta_model_id)
        REFERENCES meta_models(id)

    SQL
  end

  def down
    drop_table :meta_properties
  end
end
