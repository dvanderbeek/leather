module Leather
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../../../templates/', __FILE__)

    def copy_views
      directory("views/devise", Rails.root.join("app", "views", "devise"))
    end

    def copy_ui_kit
      directory("views/pages", Rails.root.join("app", "views", "pages"))
    end

    def copy_ui_kit_styles
      copy_file("bootstrap_variables.css.scss", Rails.root.join("app", "assets", "stylesheets", "bootstrap_variables.css.scss"))
    end

    def copy_high_voltage_config
      copy_file("high_voltage.rb", Rails.root.join("config", "initializers", "high_voltage.rb"))
    end
  end
end