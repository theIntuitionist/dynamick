module MagickImages
  def self.create_image(options)
    make_buckets(options)

    image = @@styles[options[:style]].call(options)
    image.write(options[:path])
  end

  def self.make_buckets(options)
    magick_root = File.join(Rails.root, 'public/magick_images')
    style_root  = File.join(magick_root, options[:style].to_s)

    Dir.mkdir(magick_root) unless File.exists? magick_root
    Dir.mkdir(style_root) unless File.exists? style_root
  end
end
