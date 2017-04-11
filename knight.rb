class Knight
  require_relative 'chessboard'

  def initialize
    @chessboard = Chessboard.new
    @board_with_knight = build_graph_of_moves
  end

  def build_graph_of_moves
    8.times do |col|
      8.times do |row|
        possible_moves = [[row - 2, col + 1],
                          [row - 1, col + 2],
                          [row + 1, col + 2],
                          [row + 2, col + 1],
                          [row + 2, col - 1],
                          [row + 1, col - 2],
                          [row - 1, col - 2],
                          [row - 2, col - 1]]

        possible_moves.each do |move|
          @chessboard.board[row][col].neighbors << move unless @chessboard.wrong_move?(move)
        end
      end
    end
    @chessboard.board
  end
end
