require 'rails'
module MagickImages
  class Engine < Rails::Engine
    # engine_name :magick_images

    require 'magick_images' if defined?(Rails)
  end
end
