class HomeController < ApplicationController
  def index
    @page_title = site_name
    @page_description = "Skeleton Description"
    @page_keywords = ['Home', 'Início', 'Rails', 'Skeleton']
    logo
  end
end
