require_relative 'piece'

class Board
  attr_accessor :grid

  def initialize(grid = nil)
    @grid = grid
    @grid ||= Array.new(8) { Array.new(8, NullPiece.instance) }
    populate
  end

  def populate
    back_rank = [Rook, Knight, Bishop, King, Queen, Bishop, Knight, Rook]
    (0..7).each do |col|
      self[[0, col]] = back_rank[col].new(:black, self, [0, col])
      self[[7, col]] = back_rank[col].new(:white, self, [7, col])
    end
    grid[1].each_index do |col|
      self[[1, col]] = Pawn.new(:black, self, [1, col])
    end
    grid[6].each_index do |col|
      self[[6, col]] = Pawn.new(:white, self, [6, col])
    end
  end

  def [](pos)
    row, col = pos
    grid[row][col]
  end

  def []=(pos, piece)
    row, col = pos
    grid[row][col] = piece
  end

  def move_piece(start_pos, end_pos)
    raise "No Piece in Start Position" if self[start_pos].nil?
    raise "Position Not on Board" unless valid_pos?(end_pos)
    self[end_pos] = self[start_pos]
    self[start_pos] = nil
  end

  def valid_pos?(pos)
    pos.first.between?(0, 7) && pos.last.between?(0, 7)
  end

end

if __FILE__ == $PROGRAM_NAME
  board = Board.new
  test_piece = Piece.new
  start_pos = [3, 3]
  end_pos = [6, 5]
  board[start_pos] = test_piece
  p board.grid
  board.move_piece(start_pos, end_pos)
  p board.grid
end
