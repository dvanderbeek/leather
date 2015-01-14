module Leather
  class ApplicationController < ::ApplicationController
    layout 'application'

    def ui_kit
      set_tab :ui_kit
    end

    def components
      set_tab :components
    end
  end
end