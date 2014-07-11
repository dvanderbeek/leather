module Leather
  module LeatherHelpers
    def modal_toggle(text, id, html_options = {})
      link_to text, "##{id}", data: { toggle: "modal" }, class: html_options[:class]
    end

    def modal(id = 'modal', html_options = {}, &block)
      render partial: 'leather/modal', locals: { id: id, block: capture(&block), html_options: html_options }
    end

    def modal_header(title = '', &block)
      render partial: 'leather/modal_header', locals: { title: title }
    end

    def modal_body(&block)
      render partial: 'leather/modal_body', locals: { block: capture(&block) }
    end

    def modal_footer(close_text = '')
      render partial: 'leather/modal_footer', locals: { close_text: close_text }
    end

    def nav_item(text, href, options = {})
      render partial: 'leather/nav_item', locals: { text: text, href: href, options: options }
    end

    def nav_list(html_options = {}, &block)
      render partial: 'leather/nav_list', locals: { block: capture(&block), html_options: html_options }
    end

    def navbar(title, brand_link, html_options = {}, &block)
      html_options = { class: "navbar-default" }.merge(html_options)
      render partial: 'leather/navbar', locals: { title: title, brand_link: brand_link, block: capture(&block), html_options: html_options }
    end

    def navbar_with_container(html_options = {}, &block)
      html_options[:container_mode] = :with
      navbar(html_options, &block)
    end

    def navbar_in_container(html_options = {}, &block)
      html_options[:container_mode] = :in
      navbar(html_options, &block)
    end

    def dropdown_nav_item(text, href, active = false, &block)
      render partial: 'leather/dropdown_nav_item', locals: { block: capture(&block), text: text, href: href, active: active }
    end
  end
end