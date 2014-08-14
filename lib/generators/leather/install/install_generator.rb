module Leather
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../../../templates/', __FILE__)

    def copy_devise_views
      directory("views/devise", Rails.root.join("app", "views", "devise"))
    end

    def copy_pages
      directory("views/pages", Rails.root.join("app", "views", "pages"))
    end

    def copy_bootstrap_variables
      copy_file("bootstrap_variables.css.scss", Rails.root.join("app", "assets", "stylesheets", "bootstrap_variables.css.scss"))
    end

    def copy_high_voltage_config
      copy_file("high_voltage.rb", Rails.root.join("config", "initializers", "high_voltage.rb"))
    end
  end
end