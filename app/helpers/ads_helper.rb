module AdsHelper
  def banners_ads(width, height, position, amount)
    format_ad = FormatAd.where(width: width, height: height, position: position)
    BannerAd.where(format_ad: format_ad, status: true)
            .where('start_date <= ?', Time.now)
            .where('finish_date >= ?', Time.now)
            .order_by_rand.limit(amount)
  end

  def show_banner_ad(banner, width, heigth)
    unless banner.nil?
      # if banner.code_client_adsense.empty?
        if banner.extension != 'swf'
          return link_to external_link(banner.url), target: target(banner) do
            image_tag banner.file_ad
          end
        elsif banner.extension == 'swf'
          return swf_object banner.file_ad.to_s, width, height
        end
      # else
        # adsense_tag(
        #   client: banner.code_client_adsense,
        #   slot: banner.code_slot_adsense,
        #   dimension: banner.format_ad.width.to_s << 'x' << banner.format_ad.width.to_s
        # )
      # end
    end
  end

  def swf_object(swf, width, height)
    "<embed src='#{swf}' width='#{width}' height='#{height}' wmode='transparent' />"&.html_safe
  end

  def target(banner)
    '_blank' 
  end

  def external_link(url)
    if url.present?
      url.include?('http://') || url.include?('https://') ? url :url.insert(0, 'http://')
    else
      'javascript:void(0)'
    end
  end
end
