# rubocop:disable Style/FormatStringToken
# rubocop:disable Style/MixinUsage
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/MethodLength

require_relative './../lib/board'
require_relative './../lib/player'
require_relative './../lib/move'

puts 'Welcome to Tic Tac Toe'
puts ' '

public

include Board

def display_board
  (0..1).each { puts ' ' }
  puts format(' %s | %s | %s ', @board[1], @board[2], @board[3])
  puts '-----------'
  puts format(' %s | %s | %s ', @board[4], @board[5], @board[6])
  puts '-----------'
  puts format(' %s | %s | %s ', @board[7], @board[8], @board[9])
  (0..1).each { puts ' ' }
end

# Ask player to enter their name
def player
  puts 'Please enter your name player 1'
  player1_name = gets.chomp.upcase
  @player1 = Player.new(player1_name)
  puts "Welcome to the game #{player1_name}\n\n"

  puts 'Please enter your name player 2'
  player2_name = gets.chomp.upcase
  @player2 = Player.new(player2_name)
  puts "Welcome to the game #{player2_name}\n\n"
end

# Select token
def players
  @player1_token = %w[X O].sample
  @player2_token = if @player1_token == 'X'
                     'O'
                   else
                     'X'
                   end
  puts "#{@player1.name} token is #{@player1_token}"
  puts "#{@player2.name} token is #{@player2_token}"
end

def moves
  game = true

  while game == true
    puts "#{@player1.name} select between 1 -9"
    @player1_move = gets.chomp.to_i
    if @player1_move > 9 || @player1_move < 1 || @player1_move.instance_of?(String)
      puts 'Wrong move! try again'
      moves
    elsif @board[@player1_move] == ' '
      @board[@player1_move] = @player1_token
      clear_terminal
      display_board
    else
      puts 'Move already taken! try again'
      moves
    end
    if win?(@board, @player1_token)
      puts "#{@player1.name} WINS!!!!"
      break
    end
    unless @board.slice(1, 10).include? ' '
      puts "It's a draw"
      break
    end
    puts "#{@player2.name} select between 1 - 9"
    @player2_move = gets.chomp.to_i
    if @player2_move > 9 || @player2_move < 1 || @player2_move.instance_of?(String)
      puts 'Wrong move! try again'
      moves
    elsif @board[@player2_move] == ' '
      @board[@player2_move] = @player2_token
      clear_terminal
      display_board
    else
      puts 'Move already taken! try again'
      moves
    end
    if win?(@board, @player2_token)
      puts "#{@player2.name} WINS!!!!"
      break
    end
    unless @board.slice(1, 10).include? ' '
      puts "It's a draw"
      break
    end
  end
end

def clear_terminal
  if RUBY_PLATFORM =~ /win32|win64|\.NET|windows|cygwin|mingw32/i
    system('cls')
  else
    system('clear')
  end
end

tic_tac_toe = PlayerMove.new
tic_tac_toe.display_board
tic_tac_toe.player
tic_tac_toe.players
tic_tac_toe.moves

# rubocop:enable Style/FormatStringToken
# rubocop:enable Style/MixinUsage
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/MethodLength
