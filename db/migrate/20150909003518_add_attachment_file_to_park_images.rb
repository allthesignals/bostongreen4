class AddAttachmentFileToParkImages < ActiveRecord::Migration
  def self.up
    change_table :park_images do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :park_images, :file
  end
end
