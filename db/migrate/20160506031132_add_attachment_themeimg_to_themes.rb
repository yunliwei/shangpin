class AddAttachmentThemeimgToThemes < ActiveRecord::Migration
  def self.up
    change_table :themes do |t|
      t.attachment :themeimg
    end
  end

  def self.down
    remove_attachment :themes, :themeimg
  end
end
