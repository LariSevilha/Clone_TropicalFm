  # searchkick batch_size: 50, index_prefix: "tropical_fm" #apontamento para o Cloudflare

class Album < ApplicationRecord
  mount_uploader :image, AlbumUploader


  extend FriendlyId
    friendly_id :name, use: :slugged

    def create_associated_image(image)
      image.create(image: image)
    end
  
    def cover_photo
      a = Album.where(cover: true)
  
      if a.any?
        a.first&.image
      else
        image&.first&.image
      end
    end
end
