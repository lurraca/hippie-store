class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :phone1
      t.string :phone2
      t.string :web
      t.string :fbook
      t.string :twitter
      t.string :pinterest
      t.string :address
      t.text :description
      t.string :tags

      t.timestamps
    end
  end
end
