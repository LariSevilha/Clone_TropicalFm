class Link < ApplicationRecord
  mount_uploader :image, LinkUploader
  belongs_to :link_category
end
