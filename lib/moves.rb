class Game
  def initialize
    @winning_moves = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
      [1, 4, 7],
      [2, 5, 8],
      [3, 6, 9],
      [1, 5, 9],
      [3, 5, 7]
    ]
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

  def self.valid_moves?(move, board)
    board.include?(move)
  end

  def win(board, player); end
end
