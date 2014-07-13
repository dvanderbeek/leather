class HomeController < ApplicationController
  def index
    @current_navs[:main]      = "home"
    @current_navs[:secondary] = "dolor"
  end
end