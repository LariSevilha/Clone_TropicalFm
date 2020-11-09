class HomeController < ApplicationController
  def index
    @page_description = "Skeleton Description"
    @page_keywords = ["Home", "Início", "Rails", "Skeleton"]
    page_info("Home")
  end
end
