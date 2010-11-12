require 'rails'
module Dynamick
  class Engine < Rails::Engine
    # engine_name :dynamick
   
    # Have to manually load the helper. Might be fixed in Rails 3.0.1
    config.to_prepare do
      ApplicationController.helper(DynamickHelper)
    end

    require 'dynamick' if defined?(Rails)
  end
end
