
class Board
  attr_accessor :grid

  def initialize(grid = nil)
    @grid = grid
    @grid ||= Array.new(8) { Array.new(8) }
  end

  def [](pos)
    row, col = pos
    self.grid[row][col]
  end

  def []=(pos, piece)
    row, col = pos
    grid[row][col] = piece
  end

  def move_piece(start_pos, end_pos)
    raise "No Piece in Start Position" if self[start_pos].nil?
    if end_pos.first > grid.length || end_pos.last > grid.transpose.length
      raise "Position Not on Board"
    end
    self[end_pos] = self[start_pos]
    self[start_pos] = nil
  end
gi
end

class Piece
  def initialize
  end
end

class NullPiece < Piece
  def initialize
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
