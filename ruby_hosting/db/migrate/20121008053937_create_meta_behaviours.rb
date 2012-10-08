class CreateMetaBehaviours < ActiveRecord::Migration
  def up
    create_table :meta_behaviours do |t|
      t.belongs_to :meta_model
      t.string :name
      t.text :description
      t.string :method
      t.string :path

      t.timestamps
    end

    #add a foreign key
    execute <<-SQL
      ALTER TABLE meta_behaviours
        ADD CONSTRAINT fk_meta_behaviours_model
        FOREIGN KEY (meta_model_id)
        REFERENCES meta_models(id)
    SQL
    
  end

  def down
    drop_table :meta_behaviours
  end
end
