require_relative 'piece'
require_relative 'queen'
require_relative 'king'
require_relative 'bishop'
require_relative 'knight'
require_relative 'rook'
require_relative 'pawn'
require_relative 'nil_piece'
require_relative 'cursor'


class Board 
  attr_reader :grid 

  PIECES = [:P, :Q, :K, :B, :N, :R]
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
        self[cur_pos] = set_piece(cur_pos)
        # initiate correct piece class in idx
        # if row_idx < 2 || row_idx > 5
        #   self[cur_pos] = Piece.new(:x,cur_pos) 
        # else
        #   self[cur_pos] = NilPiece.new("_", cur_pos)
        # end
      end
    end          
  end

  def set_piece(piece_pos)
    # return the correct instance of piece 
    row, col = piece_pos 
    # set piece key, value, color according to piece position 

    # set player 1 pieces 
    case row 
    when 0
      make_other_piece(piece_pos, :white) 
    when 1
      Pawn.new(:P, piece_pos, :white) 
    
    # set player 2 pieces 
    when 6
      Pawn.new(:P, piece_pos, :black) 
    when 7
      make_other_piece(piece_pos, :black)
    else 
      return NilPiece.new(:_, piece_pos, :blue)
    end
    # initiate piece 
  end

  # initiates non pawn pieces ( same for both players )
  def make_other_piece(piece_pos, color)

    col = piece_pos[1]

    case col
    when 0, 7
      Rook.new(:R, piece_pos, color)
    when 1, 6
      Knight.new(:N, piece_pos, color)
    when 2, 5
      Bishop.new(:B, piece_pos, color)
    when 3
      Queen.new(:Q, piece_pos, color)
    when 4
      King.new(:K, piece_pos, color)
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