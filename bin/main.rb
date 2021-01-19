require_relative './../lib/games'
require_relative './../lib/validators'
puts 'Welcome to Tic Tac Toe'
puts ' '
tic_tac_toe = TicTacToe.new
tic_tac_toe.display_board
tic_tac_toe.players
tic_tac_toe.moves
