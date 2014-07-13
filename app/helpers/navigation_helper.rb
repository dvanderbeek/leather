module NavigationHelper
  def active_class(href, options)
    if (@current_navs.present? && options[:current_nav].present? && @current_navs[options[:current_nav][0]] == options[:current_nav][1]) || current_page?(href)
      'active'
    else
      ''
    end
  end
end