class Promotion < ApplicationRecord
 mount_uploader :image, PromotionUploader

 validates :title, :regulation, :start_date, :finish_date, presence: true   

 
 extend FriendlyId
 friendly_id :title, use: :slugged
end
