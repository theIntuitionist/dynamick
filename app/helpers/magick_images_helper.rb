module MagickImagesHelper

  def magick_image(style, file_name, options={})
    image_tag(URI.escape("/magick_images/#{style.to_str}/#{file_name}"), options)
  end
  
end
