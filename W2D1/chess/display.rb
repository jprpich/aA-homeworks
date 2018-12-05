require "colorize"
require_relative "cursor"
require_relative "board"
class Display
  attr_reader :cursor, :board
  def initialize
    @board = Board.new
    @cursor = Cursor.new([0, 0],@board)
  end

  def setup
    system("clear")
    while true
      self.render
      self.cursor.get_input
      system("clear")
    end
  end

  def render
    # print the column numbers 
    # TO DO: break into method
    cols = "  "
    (0..7).each {|i| cols += " #{i} "}
    print cols 
    puts # adds a spacer bellow col counter

    # print the rows
    board.grid.each_with_index do |row, row_idx|
      # calls helper that buils str to print
      print build_row_str(row, row_idx)
      print "\n"
    end
    # return nil so object does not get returned
    return nil
  end

  # returns a string of row of pieces
  def build_row_str(row, row_idx)
    row_str = "#{row_idx}  "

    row.each do |piece|
      # calls helper to determine the piece color
      piece_color = set_color(piece)
      row_str += "#{(piece.value.to_s).colorize(piece_color)}  "
    end
    
    return row_str
  end
   
   # returns a color symbol used by build_sub_str
  def set_color(piece)
    # sets color to red if at cursor [row, col]
    if cursor.cursor_pos == piece.position
      to_color = {:color => :light_blue, :background => :red}
    # otherwise color is blue
    else
      to_color = :blue
    end

    to_color
  end
    
end



display = Display.new
# p display.board
# display.cursor.get_input
# p display.cursor.cursor_pos
display.setup