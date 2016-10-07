module ApplicationHelper
  def home_link
    if params[:controller] == "main"
      link_to "Home", "#header"
    else
      link_to "Home", root_url
    end
  end

  def galleries_link
    if params[:controller] == "main"
      link_to "Gallery", "#galleries"
    else
      link_to "Gallery", "#{root_url}#galleries"
    end
  end

  def agendas_link
    if params[:controller] == "main"
      link_to "Agenda", "#agendas"
    else
      link_to "Agenda", "#{root_url}#agendas"
    end
  end

  def groups_link
    if params[:controller] == "main"
      link_to "Groepen", "#groups"
    else
      link_to "Groepen", "#{root_url}#groups"
    end
  end

  def practical_info_link
    if params[:controller] == "main"
      link_to "Info", "#practical_infos"
    else
      link_to "Info", "#{root_url}#practical_infos"
    end
  end

  def rankings_link
    if params[:controller] == "main"
      link_to "Leaderboard", "#rankings"
    else
      link_to "Leaderboard", "#{root_url}#rankings"
    end
  end
end
