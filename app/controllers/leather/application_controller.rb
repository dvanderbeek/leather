module Leather
  class ApplicationController < ::ApplicationController
    layout 'application'

    def ui_kit
      set_tab :home
    end
  end
end