
class Board
  attr_reader :piece

  def initialize(grid = nil)
    @grid = grid
    @grid ||= Array.new(8) { Array.new(8) }
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, piece)
    @grid[pos] = piece
  end

  def move_piece(start_pos, end_pos)
    raise "Invalid Move" if
  end

end

class Piece
  def initialize
  end
end

class NullPiece < Piece
  def initialize
  end
end
