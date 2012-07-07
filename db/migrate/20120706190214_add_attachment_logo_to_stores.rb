class AddAttachmentLogoToStores < ActiveRecord::Migration
  def self.up
    change_table :stores do |t|
      t.has_attached_file :logo
    end
  end

  def self.down
    drop_attached_file :stores, :logo
  end
end
