class ApplicationController < ActionController::Base
  require "mini_magick"

  protect_from_forgery with: :exception

  helper_method :logo

  def logo(image = nil)
    if image.present?
      @page_image = image
    else
      # Imagem do link (Og:image)
      # Tamanho: 1080x1080
      # Padding: 160px
      @page_image = request.base_url + 
      ActionController::Base.helpers.asset_path('icon.png')
    end

    if !Rails.env.development?
      image_information = MiniMagick::Image.open(@page_image.to_s)

      @page_image_width = image_information[:width]
      @page_image_height = image_information[:height]
      @page_image_type = image_information[:format].downcase
    end
  end
end
