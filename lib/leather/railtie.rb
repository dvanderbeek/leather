module Leather

  class Railtie < Rails::Railtie
    initializer "leather.initialize" do
    end
  end

end

ActiveSupport.on_load(:action_controller) do
  include Leather::ActionController
end