class Slide < ApplicationRecord
  mount_uploader :image, SlideUploader
  
  validates :image, presence: true
end
