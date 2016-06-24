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
end
