require_relative 'piece'

class Board
  attr_accessor :grid

  def initialize(grid = nil)
    @grid = grid
    @grid ||= Array.new(8) { Array.new(8, NullPiece.instance) }
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
