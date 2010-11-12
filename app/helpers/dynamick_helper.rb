module DynamickHelper

  def dynamick_image(style, file_name, options={})
    image_tag(URI.escape("/dynamick/#{style.to_str}/#{file_name}"), options)
  end
  
end
