class Chessboard
  require_relative 'square'
  attr_accessor :board
  def initialize
    @board = []
    8.times do |r|
      @board[r] = []
      8.times do |c|
        @board[r] << Square.new(r,c)
      end
    end
  end
end
