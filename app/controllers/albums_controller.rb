class AlbumsController < ApplicationController
  def index
    @albums = Album.where("publish_date <= ?", Time.current)
    .where(status: true).page(params[:page]).per(10)

    page_info("Galeria de Fotos")
    @description = "Acesse pare ver as últimas fotos"
  end

  def show
    @album = Album.find_by_slug(params[:slug])

    page_info(@album.name, @album.cover_photo)
    @description = "Acesse pare ver as fotos do #{@album.name}"
  end
end
