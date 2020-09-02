class Album < ApplicationRecord
  validates :name, presence: true

  searchkick batch_size: 50, index_prefix: "skeleton"

  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true

  extend FriendlyId
    friendly_id :name, use: :slugged

  # Method
  def create_associated_image(image)
    photos.create(image: image)
  end

  def cover_photo
    a = photos.where('cover = true')

    if a.any?
      a.first&.image
    else
      photos&.first&.image
    end
  end
end
