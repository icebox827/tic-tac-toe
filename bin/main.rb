require_relative './../lib/games'

puts 'Welcome to Tic Tac Toe'
puts ' '

def clear_terminal
  if RUBY_PLATFORM =~ /win32|win64|\.NET|windows|cygwin|mingw32/i
    system('cls')
  else
    system('clear')
  end
end

tic_tac_toe = TicTacToe.new
tic_tac_toe.display_board
tic_tac_toe.players
tic_tac_toe.moves
