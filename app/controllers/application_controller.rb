class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logo

  def logo(image = nil)
    if image.present?
      @page_image = image
    else
      # Imagem do link (Og:image)
      # Tamanho mínimo: 600 x 315 pixels
      # Tamanho recomendado: 1200 x 628 pixels
      @page_image = request.base_url + 
      ActionController::Base.helpers.asset_path('icon.png')
    end
  end
end
