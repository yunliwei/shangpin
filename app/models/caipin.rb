class Caipin < ActiveRecord::Base
  belongs_to :caipincla
  has_attached_file :caipinimg, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :caipinimg
end
