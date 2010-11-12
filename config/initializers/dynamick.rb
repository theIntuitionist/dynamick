require File.join(File.dirname(__FILE__), '/../../lib/dynamick_author.rb')
require 'RMagick'


ActionController::Dispatcher.to_prepare do
  ApplicationController.helper(DynamickHelper)
end



module Dynamick
	@@styles = {}

  def self.init
    path = File.join(Rails.root, '/lib/dynamick')
    Dir.mkdir(path) unless File.exists?(path)
    read_styles(path)
  end

  def self.read_styles(path)
    Dir.new(path).each do |file_name|
      if file_name =~ /.*\.rb$/
        file_contents = File.open(File.join(path, file_name), "rb").read
        style = eval "lambda do |params| \n #{file_contents} \nend "
        style_name    = file_name.scan(/(.*)\.rb$/).flatten.first

        @@styles[style_name.to_sym] = style
      end
    end
  end

end

Dynamick::init()

