require "colorize"
require_relative "cursor"
require_relative "board"
String.disable_colorization = false

class Display

  attr_reader :board, :cursor

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end

  def render
    board.grid.each_with_index do |arr, idx1|
      arr.each_with_index do |arr2, idx2|
        if [idx1, idx2] == cursor.cursor_pos
          print "  ".colorize(:background => :light_blue)
        elsif (idx1 + idx2).odd?
          print "  ".colorize(:background => :white)
        else
          print "  ".colorize(:background => :black)
        end
      end
      print "\n"
    end
  end

  def run
    loop do
      render
      cursor.get_input
      system("clear")
    end
  end


end

if __FILE__ == $PROGRAM_NAME
  board = Board.new
  disp = Display.new(board)
  disp.run
end
