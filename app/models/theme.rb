class Theme < ActiveRecord::Base
  belongs_to :themecla
  has_attached_file :themeimg, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :themeimg
end

