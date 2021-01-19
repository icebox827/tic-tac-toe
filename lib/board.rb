class Board
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
