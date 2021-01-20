class PlayerMove
  def win?(board, player_token)
    if board[1, 3].all? player_token
      true
    elsif board[4, 3].all? player_token
      true
    elsif board[7, 3].all? player_token
      true
    elsif [board[2], board[5], board[8]].all? player_token
      true
    elsif [board[3], board[6], board[9]].all? player_token
      true
    elsif [board[1], board[5], board[9]].all? player_token
      true
    elsif [board[3], board[5], board[7]].all? player_token
      true
    elsif [board[1], board[4], board[7]].all? player_token
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
