module SimpleFormBootstrap3
  class Engine < ::Rails::Engine
    config.autoload_paths << File.expand_path("../../../lib", __FILE__)

    initializer 'simple_form_bootstrap3.initialize' do
      ActiveSupport.on_load :action_controller do
        helper SimpleFormBootstrap3::ApplicationHelper
      end
    end
  end
end
