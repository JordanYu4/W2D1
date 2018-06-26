require 'singleton'

class Piece

  def initialize
  end

  def moves

  end

end

class NullPiece < Piece
  include Singleton

  def initialize
  end

end

class Bishop < Piece

  def move_dirs
    
  end

end

module SteppingPiece

end

module SlidingPiece

end
