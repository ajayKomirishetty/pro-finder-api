class CreateLocationsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.integer :object_id
      t.string  :location
      t.string :type
   
      t.integer :lock_version
      t.timestamps
    end
  end
end
