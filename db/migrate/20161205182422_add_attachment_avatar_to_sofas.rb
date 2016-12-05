class AddAttachmentAvatarToSofas < ActiveRecord::Migration
  def self.up
    change_table :sofas do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :sofas, :avatar
  end
end
