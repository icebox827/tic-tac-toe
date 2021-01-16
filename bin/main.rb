#!/usr/bin/env ruby

# rubocop:disable Style/GlobalVars
# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/PerceivedComplexity

# Create the token and the board
tokens = %w[X O]
board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# Ask player to enter their name
puts 'Please enter your name player 1'
$player1 = gets.chomp
puts "Welcome #{$player1}"
puts 'Please enter your name player 2'
$player2 = gets.chomp
puts "Welcome #{$player2}"

# Ask Player 1 to choose a token and assign a token to player 2
def user_tokens(tokens)
  puts "#{$player1} choose your destiny token X or O"
  player1_token = gets.chomp
  if player1_token == tokens[0]
    (puts "#{$player1} will use #{tokens[0]} and #{$player2} will use #{tokens[1]}")
  elsif player1_token == tokens[1]
    (puts "#{$player1} will use #{tokens[1]} and #{$player2} will use #{tokens[0]}")
  else
    puts 'Invalid token'
  end
end

# Welcome the players
def greetings
  puts 'Welcome to the Tic tac toe game'
  puts "#{$player1} and #{$player2} let's begin"
end

# Create the board and display it
def board_display(board)
  puts 'Tic tac toe board: '
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Create move for the game
def player_move(board)
  puts 'Choose a number between 1 and 9...'
  counter = 0
  while counter < 10
    puts "#{$player1} is your turn"
    move = gets.chomp.to_i
    board_display(board)
    user_move = board.select { |i| move == i }
    if move > 9
      puts 'You chose an invalid number, please choose again ...'
      counter -= 1
    else
      counter += 1
      puts "#{$player2} is your turn"
      move = gets.chomp.to_i
      if move > 9 || user_move.any? { |i| board.include?(i) }
        puts 'You chose an invalid number, please choose again ...'
        counter -= 1
      else
        board_display(board)
        counter += 1
        break
      end
    end
  end
end

puts 'Game over'
puts "#{$player1} wins"
puts "#{$player2} wins"
puts "it's a draw"

# Call the methods
greetings
user_tokens(tokens)
board_display(board)
player_move(board)

# rubocop:enable Style/GlobalVars
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/PerceivedComplexity
