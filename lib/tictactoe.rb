class Tictactoe
  @@winning_moves [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
  ]

  class Board < Tictactoe
    attr_reader :board

    def intialize
      @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end

    # Create a method to display the board 
    def board_display
      puts 'Tic tac toe board: '
      puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts '-----------'
      puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts '-----------'
      puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
  end

  class Game < Tictactoe

  end
end
