module NavigationHelper
  def active_class(href, options)
    if (options[:nav_id].present? && current_tab?(options[:nav_id][0], options[:nav_id][1])) || current_page?(href)
      'active'
    else
      ''
    end
  end
end