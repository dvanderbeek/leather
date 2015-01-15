module Leather
  class LayoutsController < ApplicationController
    def admin
      set_tab :layouts
    end

    def three_column
      set_tab :layouts
    end
  end
end