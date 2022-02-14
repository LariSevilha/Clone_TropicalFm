  # searchkick batch_size: 50, index_prefix: "tropical_fm" #apontamento para o Cloudflare

class Album < ApplicationRecord
  
  mount_uploader :image, AlbumUploader

  has_many :album, dependent: :destroy

  extend FriendlyId
    friendly_id :name, use: :slugged


end
