module SlidingPiece
  HORIZONTAL_DIRS = [[0, 1], [1, 0], [-1, 0], [0, -1]]
  DIAGONAL_DIRS = [[1, 1], [-1, 1], [1, -1], [-1, -1]]

  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves
    dirs = move_dirs
    possible_moves = []

    dirs.each do |dir|
      possible_moves += grow_unblocked_moves_in_dir(dir.first, dir.last)
    end
    return possible_moves
  end

  private
  def move_dirs
    raise "move_dirs not yet defined in #{self.class}"
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    dir_moves = []
    next_pos = pos.dup

    loop do
      next_pos = [next_pos.first + dx, next_pos.last + dy]
      break unless valid_move?(next_pos)
      break if board[next_pos].color == self.color

      dir_moves << next_pos
    end
  end

end
