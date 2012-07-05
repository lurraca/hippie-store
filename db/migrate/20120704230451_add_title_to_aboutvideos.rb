class AddTitleToAboutvideos < ActiveRecord::Migration
  def change
    add_column :aboutvideos, :title, :string
  end
end
