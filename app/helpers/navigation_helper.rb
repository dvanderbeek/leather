module NavigationHelper
  def active_class(href, options)
    if (@current_nav.present? && options[:current_nav].present? && @current_nav == options[:current_nav]) || current_page?(href)
      'active'
    else
      ''
    end
  end
end