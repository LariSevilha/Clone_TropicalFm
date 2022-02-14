class FormatAd < ApplicationRecord
  validates :title, :width, :height, presence: true

  has_many :banner_ads, inverse_of: :format_ad
end
