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

  def valid_number?(user_input)
    return false if user_input > 9 || user_input < 1

    true
  end

  def valid_object?(user_input)
    return true if user_input.instance_of?(Integer)

    false
  end

  def empty?(user_input, board)
    return true if board[user_input.to_i] == ' '

    false
  end
end

# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/AbcSize
