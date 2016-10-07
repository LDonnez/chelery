class MainController < ApplicationController
  def index
    @galleries = Gallery.all if @settings.enable_galleries
    @agendas = Agenda.order(date: :asc) if @settings.enable_agendas
    @groups = Group.all if @settings.enable_groups
    @rankings = Ranking.order(points: :desc) if @settings.enable_rankings
    @practical_infos = PracticalInfo.order(sorter: :asc)if @settings.enable_practical_infos
  end
end
