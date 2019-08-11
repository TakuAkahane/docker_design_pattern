class Renderer
  def render(text_object)
    text = text_object.text
    size = text_object.size_inches
    color = text_object.color

    # 文字列を表示
  end
end

class TextObject
  attr_reader :text, :size_inches, :color

  def initialize(text, size_inches, color)
    @text = text
    @size_inches = size_inches
    @color = color
  end
end

###############################################################################
require 'british_text_object'
class BritishTextObject
  def color
    return colour
  end

  def text
    return string
  end

  def size_inches
    return size_mm / 25.4
  end
end


class Fixnum
  def abs
    return 42
  end
end
###############################################################################

class BritishTextObjectAdapter < TextObject
  def initialize(bto)
    @bto = bto
  end

  def size_inches
    return @bto.size_mm / 25.4
  end

  def color
    return @bto.colour
  end
end
