class HomeController < ApplicationController
  def index
    @page_title = "Skeleton"
    @page_description = "Skeleton Description"
    @page_keywords = ['Home', 'Início', 'Rails', 'Skeleton']
    logo
  end
end
