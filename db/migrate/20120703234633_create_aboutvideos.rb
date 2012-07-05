class CreateAboutvideos < ActiveRecord::Migration
  def change
    create_table :aboutvideos do |t|
      t.string :url
      t.date :date
      t.text :desc

      t.timestamps
    end
  end
end
