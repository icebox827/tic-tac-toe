#!/usr/bin/env ruby
# Create the token and the board
tokens = %w[X O]
board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Invite users to enter their name and welcome them
def greetings(tokens)
  puts 'Welcome to the Tic Tac Toe game'
  puts 'Please enter your name player 1'
  player1 = gets.chomp
  puts "welcome #{player1}"
  puts 'Please enter your name player 2'
  player2 = gets.chomp
  puts "welcome #{player2}"
  # Ask Player 1 to choose a token and assign a token to player 2
  puts "#{player1} choose your destiny token X or O"
  player1_token = gets.chomp
  if player1_token == tokens[0]
    (puts "#{player1} will use #{tokens[0]} and #{player2} will use #{tokens[1]}")
  else
    (puts "#{player1} will use #{tokens[1]} and #{player2} will use #{tokens[0]}")
  end
  puts "Now #{player1} and #{player2} let's begin"
end

def board_display(board)
  puts 'Current board: '
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

greetings(tokens)
board_display(board)
