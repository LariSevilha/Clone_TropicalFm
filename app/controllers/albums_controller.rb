class AlbumsController < ApplicationController
  def index
    @albums = Album.where("publish_date <= ?", Time.current)
    .where(status: true).page(params[:page]).per(10)
  end

  def show
    @album = Album.find_by_slug(params[:slug])
  end
end
