module NavigationHelper
  def active_class(href, options)
    if (@current_navs.present? && options[:nav_id].present? && @current_navs[options[:nav_id][0]] == options[:nav_id][1]) || current_page?(href)
      'active'
    else
      ''
    end
  end
end