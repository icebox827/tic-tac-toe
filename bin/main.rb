#!/usr/bin/env ruby

require_relative '../lib/tictactoe'
require_relative '../lib/moves'
require_relative '../lib/player'

# Create the token
tokens = %w[X O]

# Welcome the players
def greetings
  puts 'Welcome to the Tictactoe game'
end

# Ask player to enter their name
puts 'Please enter your name player 1'
player1_name = gets.chomp.upcase
player1 = Player.new(player1_name)
puts "Welcome to the game #{player1_name}\n\n"

puts 'Please enter your name player 2'
player2_name = gets.chomp.upcase
player2 = Player.new(player2_name)
puts "Welcome to the game #{player2_name}\n\n"

# Select token
puts 'Choose one of those tokens : X or O'
puts "#{player1.name} choose a token"
token1 = gets.chomp.upcase
player1.token = token1
if player1.token == tokens[0]
  (puts "#{player1.name} will use #{tokens[0]} and #{player2.name} will use #{tokens[1]}")
elsif player1.token == tokens[1]
  (puts "#{player1.name} will use #{tokens[1]} and #{player2.name} will use #{tokens[0]}")
else
  puts 'Invalid token try again : X or O'
  token1 = gets.chomp.upcase
end

# Create a method to display the board
def board_display
  puts 'Tic tac toe board: '
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Create move for the player
def player_move
  puts 'Choose a number between 1 and 9...'
  move = gets.chomp.to_i
  if move > 9
    puts 'Wrong number, please try again ...'
    player_move
  else
    move
  end
end

# Create a loop to play the game


# Call the methods
greetings
