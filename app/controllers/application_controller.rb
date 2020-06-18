class ApplicationController < ActionController::Base
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
  end
end
