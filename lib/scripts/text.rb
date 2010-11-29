#expects 
#   params[:font] => path to font
#   params[:size] => font size in points
#   params[:background_color] => #hexcol hex color
#   params[:foreground_color] => #hexcol hex color

canvas = Magick::Image.new(600, 18){ self.background_color = '#212121' }
gc = Magick::Draw.new
gc.fill('white')
gc.font = ("/Users/oh/Documents/Bussiness/JohnMcNeil/Juniper/_Juniper Documents/Antenna/Antenna-Light.otf")
gc.pointsize = 18.0
gc.text(0, 14, params[:image_name])
gc.draw(canvas)

return canvas

