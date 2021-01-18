class Player
  attr_reader :name, :token

  def intialize(name, token)
    @name = name
    @token = token
  end

  def player_info
    "Player is #{name} and got the token #{token}."
  end

  def self.player_turn(player1, player2, updated_board)
    counter = updated_board.interger_counter
    if counter.even?
      player2
    else
      player1
    end
  end
end
