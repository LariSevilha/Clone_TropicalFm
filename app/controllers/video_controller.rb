class VideoController < ApplicationController
  def index
    @videos = Video.where("publish_date <= ?", Time.current)
    .where(status: true).order(publish_date: "DESC").page(params[:page]).per(6)   

    page_info("Vídeos")
    
   
  end

  def show
    @video = Video.find_by_slug(params[:slug])   
    
    page_info(@video.description)
    
    @page_description = "#{@video.description} - Nova Andradina"
   
    @page_type = "video"   
  end 
end
