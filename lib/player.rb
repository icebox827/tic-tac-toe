# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/AbcSize
class PlayerMove
  def win?(board, player_token)
    if board[1] == player_token and board[2] == player_token and board[3] == player_token
      true
    elsif board[4] == player_token and board[5] == player_token and board[6] == player_token
      true
    elsif board[7] == player_token and board[8] == player_token and board[9] == player_token
      true
    elsif board[2] == player_token and board[5] == player_token and board[8] == player_token
      true
    elsif board[3] == player_token and board[6] == player_token and board[9] == player_token
      true
    elsif board[1] == player_token and board[5] == player_token and board[9] == player_token
      true
    elsif board[3] == player_token and board[5] == player_token and board[7] == player_token
      true
    elsif board[1] == player_token and board[4] == player_token and board[7] == player_token
      true
    else
      false
    end
  end

  def tie?(board)
    board.slice(1, 10).include? ' '
  end

  def player_moves(player_move, token, board)
    board[player_move] = token
  end
end

# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/AbcSize
