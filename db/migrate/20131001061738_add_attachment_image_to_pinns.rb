class AddAttachmentImageToPinns < ActiveRecord::Migration
  def self.up
    change_table :pinns do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :pinns, :image
  end
end
