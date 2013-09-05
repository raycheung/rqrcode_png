module RQRCodePNG
  module QRCodeExtensions 
    # This method returns a 33x33 .png of the code
    def to_img(args = {})
      defaults = {border_width: 0, bg_color: ChunkyPNG::Color::TRANSPARENT}
      args = defaults.merge(args)
      return Image.new(self, args[:border_width]).render(args[:bg_color])
    end
  end
end

