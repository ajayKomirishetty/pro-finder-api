class CreateTechnologiesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :technologies do |t|
      t.integer :object_id
      t.string  :technology
      t.string :type
    
      t.integer :lock_version
      t.timestamps
    end
  end
end
