class AnnouncerController < ApplicationController
  def index
    @annoucer = Announcer.all
  end
end
