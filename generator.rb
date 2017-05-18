require 'chunky_png'
require_relative 'utils'

class Generator
  def initialize(bgwidth, bgheight, img_path)
    img = ChunkyPNG::Image.from_file(img_path)
    height = img.dimension.height
    width  = img.dimension.width
    color = ChunkyPNG::Color
    pixels = []

    @scale = bgwidth / width

    height.times do |i|
      width.times do |j|
        if color.r(img[j, i]) == 255 and color.g(img[j, i]) == 255 and color.b(img[j, i]) == 255
          pixels.push({x: j, y: i, color: "white"})
        else
          pixels.push({x: j, y: i, color: "black"})
        end
      end
    end

    @code_array = []

    pixels.each do |pixel|
      if pixel[:color] == "black"
        @code_array.push(DummyPixel.new(pixel[:x], pixel[:y], @scale))
      end
    end
  end

  def colliding?(obj)
    @code_array.each do |pixel|
      if are_touching?(obj, pixel)
        return true
      end
    end
    return false
  end
end
