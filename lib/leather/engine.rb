module Leather
  class Engine < ::Rails::Engine
    isolate_namespace Leather
    
    initializer "leather.helpers" do
      ActionView::Base.send :include, Leather::LeatherHelpers
    end
  end
end
