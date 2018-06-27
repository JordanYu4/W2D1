

module SteppingPiece

  def moves
    diffs = move_diffs
    possible_moves = diffs.map do |diff|
      [pos.first + diff.first, pos.last + diff.last]
    end
    possible_moves.select! do |move|
      valid_pos?(move) && board[move.color] != self.color
    end
  end

  private

  def move_diffs
    raise "move_diffs not yet defined in #{self.class}"
  end

end
