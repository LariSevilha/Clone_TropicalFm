class AlbumsController < ApplicationController
  def index
    @albums = Album.where("publish_date <= ?", Time.current)
    .where(status: true).page(params[:page]).per(10)

    page_info("Galeria de Fotos")
    @description = "Acesse pare ver as últimas nóticias"
  end

  def show
    @album = Album.find_by_slug(params[:slug])

    page_info(@album.name)
    @description = "Acesse pare ver nossas fotos"
  end
end
