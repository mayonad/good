class AddAttachmentPhotoToDifferents < ActiveRecord::Migration
  def self.up
    change_table :differents do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :differents, :photo
  end
end
