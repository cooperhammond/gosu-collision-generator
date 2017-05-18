def are_touching?(obj1, obj2)
    obj1.x > obj2.x - obj1.width and obj1.x < obj2.x + obj2.width and obj1.y > obj2.y - obj1.height and obj1.y < obj2.y + obj2.height
end

class DummyPixel
  attr_reader :x, :y, :width, :height
  def initialize(x, y, scale)
    @x = x * scale
    @y = y * scale
    @width = scale
    @height = scale
  end
end

class Test
  attr_reader :x, :y, :width, :height
  def initialize
    @x = 1
    @y = 0
    @width = 2
    @height = 2
  end
end
