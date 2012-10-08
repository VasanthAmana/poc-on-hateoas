class CreateMetaModels < ActiveRecord::Migration
  def up
    create_table :meta_models do |t|
      t.belongs_to :meta_service
      t.references :meta_version

      t.string :name
      t.text :description
      t.string :media_type

      t.timestamps
    end

        #add a foreign key
    execute <<-SQL
      ALTER TABLE meta_models
        ADD CONSTRAINT fk_meta_models_services
        FOREIGN KEY (meta_service_id)
        REFERENCES meta_services(id)
    SQL

    execute <<-SQL
      ALTER TABLE meta_models
        ADD CONSTRAINT fk_meta_models_versions
        FOREIGN KEY (meta_version_id)
        REFERENCES meta_versions(id)
    SQL

  end

  def down
    drop_table :meta_models
  end
end
