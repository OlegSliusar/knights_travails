require_relative 'knight_moves'
test_moves = [[[3,3],[4,3]],
              [[0,0],[1,2]],
              [[0,0],[3,3]],
              [[3,3],[0,0]],
              [[0,0],[7,7]],
              [[5,5],[5,5]]]

ary_of_paths = [[[3, 3], [1, 4], [3, 5], [4, 3]],
                [[0, 0], [1, 2]],
                [[0, 0], [1, 2], [3, 3]],
                [[3, 3], [2, 1], [0, 0]],
                [[0, 0], [1, 2], [0, 4], [1, 6], [3, 7], [5, 6], [7, 7]],
                [[5, 5]]]

test_moves.each_with_index do |move, i|
  path = knight_moves(move[0], move[1])
  if path != ary_of_paths[i]
    puts "Error occurred.\n\n"
    print "Move "
    p move
    print "Expected path "
    p ary_of_paths[i]
    print "Actual "
    p path
    raise RuntimeError
  end
end
