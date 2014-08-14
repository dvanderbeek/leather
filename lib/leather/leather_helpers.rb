module Leather
  module LeatherHelpers
    def active_class(href, options)
      if (options[:nav_id].present? && current_tab?(options[:nav_id][0], options[:nav_id][1])) || current_page?(href)
        'active'
      else
        ''
      end
    end
    
    def modal_toggle(text, id = 'modal', html_options = {})
      link_to text, "##{id}", data: { toggle: "modal" }, class: html_options[:class]
    end

    def modal(id = 'modal', html_options = {}, &block)
      render partial: 'leather/bootstrap_components/modal', locals: { id: id, block: capture(&block), html_options: html_options }
    end

    def modal_header(title = '', &block)
      render partial: 'leather/bootstrap_components/modal_header', locals: { title: title }
    end

    def modal_body(&block)
      render partial: 'leather/bootstrap_components/modal_body', locals: { block: capture(&block) }
    end

    def modal_footer(&block)
      render partial: 'leather/bootstrap_components/modal_footer', locals: { block: capture(&block) }
    end

    def navbar(title, brand_link, html_options = {}, &block)
      html_options = { class: "navbar-default" }.merge(html_options)
      render partial: 'leather/bootstrap_components/navbar', locals: { title: title, brand_link: brand_link, block: capture(&block), html_options: html_options }
    end

    def navbar_with_container(html_options = {}, &block)
      html_options[:container_mode] = :with
      navbar(html_options, &block)
    end

    def navbar_in_container(html_options = {}, &block)
      html_options[:container_mode] = :in
      navbar(html_options, &block)
    end

    def nav_list(html_options = {}, &block)
      render partial: 'leather/bootstrap_components/nav_list', locals: { block: capture(&block), html_options: html_options }
    end

    def nav_item(text, href, options = {})
      render partial: 'leather/bootstrap_components/nav_item', locals: { text: text, href: href, options: options }
    end

    def dropdown_nav_item(text, href, options = {}, &block)
      render partial: 'leather/bootstrap_components/dropdown_nav_item', locals: { block: capture(&block), text: text, href: href, options: options }
    end
  end
end