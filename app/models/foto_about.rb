class FotoAbout < ApplicationRecord
  mount_uploader :image, PhotoUploader
end
