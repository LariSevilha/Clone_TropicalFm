class PromotionController < ApplicationController
  def index
    @promotion = Promotion.all
  end

  
  def show
    @promotion = Promotion.find_by_slug(params[:slug])
  end
end
