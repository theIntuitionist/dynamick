module MagickImages
  class MagickImages::MagickImagesController < ApplicationController

    unloadable

    def show
      path = "public/magick_images/#{params[:style]}/#{params[:image_name]}.#{params[:extension]}"

      if !File.exists?(File.join(Rails.root, path))
        MagickImages::create_image(
          :style      => params[:style].to_sym,
          :image_name => params[:image_name],
          :extension  => params[:extension],
          :path       => path
        )
      end

      send_file path, :x_sendfile => true, :type => "image/#{params[:extension]}", :disposition => 'inline'
    end
  end
end
