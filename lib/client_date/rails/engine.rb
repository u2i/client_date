require 'rails/engine'

module ClientDate::Rails
  class Engine < ::Rails::Engine
    initializer "precompile", :group => :all do |app|
      app.config.assets.precompile << "client_date.js"
    end

    initializer "helper" do |app|
      ActiveSupport.on_load(:action_view) do
        include ClientDate::Helper
      end
    end
  end
end
