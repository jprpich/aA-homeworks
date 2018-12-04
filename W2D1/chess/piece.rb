class Piece
  attr_reader :value, :position 
  def initialize(value=:null, position=nil)
    @value = value 
    @position = position
  end 
  def inspect 
    return value.to_s 
  end
end