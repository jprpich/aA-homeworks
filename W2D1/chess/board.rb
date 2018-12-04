require_relative 'piece'
require_relative 'nil_piece'
require_relative 'cursor'

class Board 
  attr_reader :grid 

  SENTINEL = NilPiece.new
  attr_reader :rows 
  def initialize
    
    @grid = Array.new(8) {Array.new(8, SENTINEL)}
    populate_grid
  end

  def move_piece(start_pos, end_pos)
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]

  end

  def [](pos)
    row, col = pos 
    @grid[row][col]
  end

  def []=(pos, value)
    row, col = pos 
    @grid[row][col] = value 
  end

  def populate_grid 
    # iterate over every row in grid
    grid.each_with_index do |row, row_idx|
      # iterate over every col in grid
      row.each_with_index do |piece, col_idx|
        cur_pos = [row_idx, col_idx]
        # initiate correct piece class in idx
        if row_idx < 2 || row_idx > 5
          self[cur_pos] = Piece.new(:x,cur_pos) 
        else
          self[cur_pos] = NilPiece.new("_", cur_pos)
        end
      end
    end          

  end

  # Checks if move is out of bounds 
  def valid_pos?(pos) # [0, -1]
    row, col = pos 
    return false if row < 0 || row > 7
    return false if col < 0 || col > 7
    true 
  end

end