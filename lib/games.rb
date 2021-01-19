# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/AbcSize
# rubocop:disable Style/InfiniteLoop
# rubocop:disable Style/FormatStringToken

class TicTacToe
  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

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
    @player1 = gets.chomp
    puts "welcome #{@player1}"
    puts 'enter your name player 2'
    @player2 = gets.chomp
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
    while true
      puts "#{@player1} select between 1 -9"
      @player1_move = gets.chomp.to_i
      @board[@player1_move] = @player1_token if @board[@player1_move] == ' '
      clear_terminal
      display_board
      if win?(@board, @player1_token)
        puts "#{@player1} WINS!!!!"
        break
      end
      unless @board.slice(1, 10).include? ' '
        puts 'DRAW'
        break
      end
      puts "#{@player2} select between 1 - 9"
      @player2_move = gets.chomp.to_i
      @board[@player2_move] = @player2_token if @board[@player2_move] == ' '
      clear_terminal
      display_board
      if win?(@board, @player2_token)
        puts "#{@player2} WINS!!!!"
        break
      end
      unless @board.slice(1, 10).include? ' '
        puts 'DRAW'
        break
      end
    end
  end

  def win?(board, player_token)
    if board[1] == player_token and board[2] == player_token and board[3] == player_token
      true
    elsif board[4] == player_token and board[5] == player_token and board[6] == player_token
      true
    elsif board[7] == player_token and board[8] == player_token and board[9] == player_token
      true
    elsif board[2] == player_token and board[5] == player_token and board[8] == player_token
      true
    elsif board[3] == player_token and board[6] == player_token and board[9] == player_token
      true
    elsif board[1] == player_token and board[5] == player_token and board[9] == player_token
      true
    elsif board[3] == player_token and board[5] == player_token and board[7] == player_token
      true
    elsif board[1] == player_token and board[4] == player_token and board[7] == player_token
      true
    else
      false
    end
  end
end

# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/AbcSize
# rubocop:enable Style/InfiniteLoop
# rubocop:enable Style/FormatStringToken
