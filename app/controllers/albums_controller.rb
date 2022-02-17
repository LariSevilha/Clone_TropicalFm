class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end
  def show
    @album = Album.find_by_slug(params[:slug])

    page_info(@album.name, @album.cover_photo)
    @description = "Acesse pare ver as fotos do #{@album.name}"
  end
end
