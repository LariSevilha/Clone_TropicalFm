class ProgController < ApplicationController
  def index
    @programacao = Programacao.ordered_and_grouped  
  end
end
