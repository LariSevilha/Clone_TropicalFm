class BannerAd < ApplicationRecord
  mount_uploader :file_ad,  BannerAdUploader

  validates :title, :format_ad, :start_date, :finish_date, presence: true  
    
  belongs_to :format_ad, inverse_of: :banner_ads

  def extension
    self.file_ad.to_s.split(".").last
  end
end
