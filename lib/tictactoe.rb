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

    def board_counter
      board.count { |i| i.is_a? Integer }
    end

    def updated_board(player_move, player)
      board[player_move - 1] = player.token
    end
  end

  class Game < Tictactoe

  end
end
