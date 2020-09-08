class AlbumsController < ApplicationController
  def index
    @albums = Album.where("publish_date <= ?", Time.current)
    .where(status: true).page(params[:page]).per(10)

    @page_title = "Galeria de Fotos - #{site_name}"
    @description = "Acesse pare ver as últimas nóticias"
    logo
  end

  def show
    @album = Album.find_by_slug(params[:slug])

    @page_title = "#{@album.name} - #{site_name}"
    @description = "Acesse pare ver nossas fotos"
    logo(@album.cover_photo)
  end
end
