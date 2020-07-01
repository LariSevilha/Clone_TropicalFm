class HomeController < ApplicationController
  def index
    @page_title = "Skeleton"
    @page_description = "Skeleton Description"
    logo
  end
end
