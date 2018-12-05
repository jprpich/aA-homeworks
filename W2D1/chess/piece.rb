class Piece

  attr_reader :value, :position, :color
  def initialize(value="_", position=nil, color=nil)
    @value = value 
    @position = position
    @color = color
  end 

  def inspect 
    return value.to_s 
  end

  def moves
  end
end
