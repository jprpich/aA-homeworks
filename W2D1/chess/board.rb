require_relative 'piece'
require_relative 'nil_piece'
require_relative 'cursor'
class Board 
    attr_reader :grid 
    START_POS = [
        [0,0], [0,1],[0,2],[0,3],[0,4],[0,5],[0,6],[0,7],
        [1,0], [1,1],[1,2],[1,3],[1,4],[1,5],[1,6],[1,7],
        [6,0], [6,1],[6,2],[6,3],[6,4],[6,5],[6,6],[6,7],
        [7,0], [7,1],[7,2],[7,3],[7,4],[7,5],[7,6],[7,7]
    ]
    attr_reader :rows 
    def initialize
        @grid = Array.new(8) {Array.new(8, NilPiece.new)}
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

    private
    #     def sentinel 
    #         NullPiece.new 
    #     end

    def populate_grid 
        START_POS.each do |pos|
            self[pos] = Piece.new 
        end
    end


end

board = Board.new 
cursor = Cursor.new([0,0],board)
cursor.get_input