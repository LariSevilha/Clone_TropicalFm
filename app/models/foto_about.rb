class FotoAbout < ApplicationRecord
  mount_uploader :image, PhotoUploader
  validates :image, presence: true

  belongs_to :album 
end
