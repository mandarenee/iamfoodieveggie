class AddAttachmentPhotoToTextBlocks < ActiveRecord::Migration
  def self.up
    change_table :text_blocks do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :text_blocks, :photo
  end
end
