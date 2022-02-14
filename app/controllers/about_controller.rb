class AboutController < ApplicationController
  def index
    @about = About.all
    @fotoAbout = FotoAbout.all
  end
end
