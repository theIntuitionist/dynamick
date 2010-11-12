module Dynamick
  def self.create_image(options)
    make_buckets(options)

    image = @@styles[options[:style]].call(options)
    image.write(options[:path])
  end

  def self.make_buckets(options)
    dynamick_root = File.join(Rails.root, 'public/dynamick')
    style_root  = File.join(dynamick_root, options[:style].to_s)

    Dir.mkdir(dynamick_root) unless File.exists? dynamick_root
    Dir.mkdir(style_root) unless File.exists? style_root
  end
end
