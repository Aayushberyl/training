# class AddAttachmentImageToUploads < ActiveRecord::Migration
class AddAttachmentImageToUploads < ActiveRecord::Migration[4.2]
  def self.up
    change_table :uploads do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :uploads, :image
  end
end
