#!/usr/bin/env ruby

# rubocop:disable Style/FormatStringToken

require_relative './../lib/board'
require_relative './../lib/player'

public

puts 'Welcome to Tic Tac Toe'
puts ' '

def display_board(board)
  (0..1).each { puts ' ' }
  puts format(' %s | %s | %s ', board[1], board[2], board[3])
  puts '-----------'
  puts format(' %s | %s | %s ', board[4], board[5], board[6])
  puts '-----------'
  puts format(' %s | %s | %s ', board[7], board[8], board[9])
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

def move(board)
  game = true

  while game == true
    puts "#{@player1} select between 1 -9"
    @player1_move = gets.chomp.to_i
    turn(board, @player1_move, @player1_token)
    if win?(board, @player1_token)
      puts "#{@player1} WINS!!!!"
      break
    end
    unless tie?(board)
      puts "It's a draw"
      break
    end

    puts "#{@player2} select between 1 - 9"
    @player2_move = gets.chomp.to_i
    turn(board, @player2_move, @player2_token)
    if win?(board, @player2_token)
      puts "#{@player2} WINS!!!!"
      break
    end
    unless tie?(board)
      puts "It's a draw"
      break
    end
  end
end

def turn(board, player_move, player_token)
  if empty?(player_move, board) && valid_object?(player_move) && valid_number?(player_move)
    player_moves(player_move, player_token, board)
    clear_terminal
    display_board(board)
  end
end

def clear_terminal
  if RUBY_PLATFORM =~ /win32|win64|\.NET|windows|cygwin|mingw32/i
    system('cls')
  else
    system('clear')
  end
end

board_array = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
new_board = Board.new
empty_board = new_board.empty_board(board_array)
tic_tac_toe = PlayerMove.new
display_board(empty_board)
tic_tac_toe.players
tic_tac_toe.move(empty_board)

# rubocop:enable Style/FormatStringToken
