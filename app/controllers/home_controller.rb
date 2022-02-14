class HomeController < ApplicationController
  def index
    @page_description = "Descrição Tropical FM"
    @page_keywords = ["Home", "Início", "Rails", "Tropical FM"]
    @slides = Slide.where(active: true)
    # @top_hits = TopHit.where(active: true).order(:colocation)
    @promotions = Promotion.where(:status => true)
    .where('start_date <= ?', Time.now)
    .where('finish_date >= ?', Time.now).order("title asc").page(params[:page])

    @videos = Video.where("publish_date <= ?", Time.current)
    .where(status: true).order(publish_date: "DESC").page(params[:page]).per(3) 

    @albums = Album.where("publish_date <= ?", Time.current)
    .where(status: true).page(params[:page]).per(3)

    # @hits_mobile = TopHit.active_and_ordered
    # @hits_desktop = @hits_mobile.each_slice(3)

     @schedules = Schedule.ordered_and_grouped
  end
end
