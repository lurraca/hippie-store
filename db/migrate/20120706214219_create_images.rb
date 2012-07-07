class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :store

      t.timestamps
    end
    add_index :images, :store_id
  end
end
