class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logo

  def logo(image = nil)
    if image.present?
      @page_image = image
    else
      @page_image = "https://www.agenciaw3.digital/" + ActionController::Base.helpers.asset_path('logo/logo.png')
    end
  end

end
