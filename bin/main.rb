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


# Create a method to display the board

# Create move for the game

# Call the methods
greetings

