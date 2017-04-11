class Chessboard
  require_relative 'square'
  attr_accessor :board

  def initialize
    @board = []
    8.times do |row|
      @board[row] = []
      8.times do |col|
        @board[row] << Square.new(row,col)
      end
    end
  end

  def wrong_move?(move)
    move.first < 0 || move.first >= 8 || move.last < 0 || move.last >= 8
  end
end
