require 'rails'
module MagickImages
  class Engine < Rails::Engine
    # engine_name :magick_images
   
    # Have to manually load the helper. Might be fixed in Rails 3.0.1
    config.to_prepare do
      ApplicationController.helper(MagickImagesHelper)
    end

    require 'magick_images' if defined?(Rails)
  end
end
