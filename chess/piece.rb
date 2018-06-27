require 'singleton'
require_relative 'stepping'
require_relative 'sliding'

class Piece
  attr_reader :color, :token
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
    @token = nil
  end
end

class NullPiece < Piece
  include Singleton

  def initialize
    @token = "  "
  end
end

class Bishop < Piece
  include SlidingPiece
  def initialize(color, board, pos)
    super
    @token = "BB"
  end
  protected
  def move_dirs
    diagonal_dirs
  end
end

class Rook < Piece
  include SlidingPiece
  def initialize(color, board, pos)
    super
    @token = "RR"
  end
  def move_dirs
    horizontal_dirs
  end
end

class Queen < Piece
  include SlidingPiece
  def initialize(color, board, pos)
    super
    @token = "QQ"
  end
  def move_dirs
    diagonal_dirs + horizontal_dirs
  end
end

class Knight < Piece
  include SteppingPiece
  def initialize(color, board, pos)
    super
    @token = "KN"
  end
  protected
  def move_diffs
    [[-2, 1], [-1, 2], [1, 2], [2, 1],
     [2, -1], [1, -2], [-1, -2], [-2 -1]]
  end
end

class King < Piece
  include SteppingPiece
  def initialize(color, board, pos)
    super
    @token = "KI"
  end
  protected
  def move_diffs
    [[0, 1], [1, 0], [-1, 0], [0, -1],
     [1, 1], [-1, 1], [1, -1], [-1, -1]]
  end
end

class Pawn < Piece
  def initialize(color, board, pos)
    super
    @token = "PP"
  end
end
