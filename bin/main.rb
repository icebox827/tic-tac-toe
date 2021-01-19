# rubocop:disable Style/FormatStringToken
# rubocop:disable Style/MixinUsage
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/MethodLength

require_relative './../lib/board'
require_relative './../lib/player'

puts 'Welcome to Tic Tac Toe'
puts ' '

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

def players
  puts 'enter your name player 1'
  @player1 = gets.chomp.upcase
  puts "welcome #{@player1}"
  puts 'enter your name player 2'
  @player2 = gets.chomp.upcase
  puts "welcome #{@player2}"
  @player1_token = %w[X O].sample
  @player2_token = if @player1_token == 'X'
                     'O'
                   else
                     'X'
                   end
  puts "#{@player1} token is #{@player1_token}"
  puts "#{@player2} token is #{@player2_token}"
end

def moves
  game = true

  while game == true
    puts "#{@player1} select between 1 -9"
    @player1_move = gets.chomp.to_i
    if @player1_move > 9 || @player1_move < 1 || @player1_move.instance_of?(String)
      puts 'Wrong move! try again'
    else
      @board[@player1_move] = @player1_token if @board[@player1_move] == ' '
      clear_terminal
      display_board
    end
    if win?(@board, @player1_token)
      puts "#{@player1} WINS!!!!"
      break
    end
    unless @board.slice(1, 10).include? ' '
      puts "It's a draw"
      break
    end
    puts "#{@player2} select between 1 - 9"
    @player2_move = gets.chomp.to_i
    if @player2_move > 9 || @player1_move < 1 || @player1_move.instance_of?(String)
      puts 'Wrong move! you loose your turn'
    else
      @board[@player2_move] = @player2_token if @board[@player2_move] == ' '
      clear_terminal
      display_board
    end
    if win?(@board, @player2_token)
      puts "#{@player2} WINS!!!!"
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
tic_tac_toe.players
tic_tac_toe.moves

# rubocop:enable Style/FormatStringToken
# rubocop:enable Style/MixinUsage
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/MethodLength
