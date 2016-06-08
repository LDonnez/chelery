class MainController < ApplicationController
  def index
    @settings = Setting.first
    @galleries = Gallery.all
  end
end
