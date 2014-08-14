module Leather
  module ActionControllerExtension
    extend ActiveSupport::Concern

    included do
      extend        ClassMethods
      helper_method :current_tab, :current_tab?
    end

    protected

    def set_tab(name, namespace = nil)
      tab_stack[namespace || :default] = name
    end

    def current_tab(namespace = nil)
      tab_stack[namespace || :default]
    end

    def current_tab?(name, namespace = nil)
      current_tab(namespace).to_s == name.to_s
    end

    def tab_stack
      @tab_stack ||= {}
    end

    module ClassMethods
      def set_tab(*args)
        options = args.extract_options!
        name, namespace = args

        before_filter(options) do |controller|
          controller.send(:set_tab, name, namespace)
        end
      end
    end
  end
end