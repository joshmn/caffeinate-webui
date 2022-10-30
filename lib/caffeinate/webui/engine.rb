module Caffeinate
  module Webui
    class Engine < ::Rails::Engine
      isolate_namespace ::Caffeinate::Webui

      config.generators do |g|
        g.test_framework :rspec, fixture: false
      end

      config.autoload_paths += Dir["#{config.root}/lib/**/"]
    end
  end
end
