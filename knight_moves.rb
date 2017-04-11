def knight_moves(initial, target)
  require_relative 'knight'
  knight = Knight.new
  path = knight.find_path(initial, target)
  output(path)
  path
end

def output(path)
  puts "You made it in #{path.length - 1} moves. Here's your path:"
  path.each { |move| p move}
  puts ""
end
