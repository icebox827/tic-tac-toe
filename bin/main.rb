#!/usr/bin/env ruby

require_relative '../lib/tictactoe'
require_relative '../lib/moves'
require_relative '../lib/player'

# Create the token
tokens = %w[X O]

# Ask player to enter their name and select token
def player_name(tokens)
  puts 'Player 1 enter your name'
  name = gets.chomp.upcase
  puts 'Select your token : X or O'
  player_token = gets.chomp.upcase
  player_token == tokens[0] ? (puts "#{name} you will use #{tokens[0]}") : (puts "Player 2 you will use #{tokens[1]}")
  player = Player.new(name, tokens[0])
  player
end

# Welcome the players
def greetings
  puts 'Welcome to the Tic tac toe game'
  puts "#{player1} and #{player2} let's begin"
end

# Create a method to display the board
def board_display(board)
  puts 'Tic tac toe board: '
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Create move for the game

# Call the methods
player1 = player_name(tokens)
player2 = player_name(tokens)
greetings
board_display(board)
player_move


