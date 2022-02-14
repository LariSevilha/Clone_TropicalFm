class Announcer < ApplicationRecord
  mount_uploader :image, PhotoUploader
  validates :image, :text, presence: true
end
