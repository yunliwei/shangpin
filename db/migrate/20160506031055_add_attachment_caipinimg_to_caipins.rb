class AddAttachmentCaipinimgToCaipins < ActiveRecord::Migration
  def self.up
    change_table :caipins do |t|
      t.attachment :caipinimg
    end
  end

  def self.down
    remove_attachment :caipins, :caipinimg
  end
end
