class AddAttachmentMainphotoToStores < ActiveRecord::Migration
  def self.up
    change_table :stores do |t|
      t.has_attached_file :mainphoto
    end
  end

  def self.down
    drop_attached_file :stores, :mainphoto
  end
end
