Rails.application.routes.draw do |map|
  match '/magick_images/:style/:image_name.:extension' => 'MagickImages/MagickImages#show'
end
