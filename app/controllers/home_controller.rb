class HomeController < ApplicationController
  def index
    @page_description = "Skeleton Description"
    @page_keywords = ["Home", "Início", "Rails", "Skeleton"]
  end
end
