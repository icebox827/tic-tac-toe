module Moves
  invalid_move = []

  def player_move
    counter = 0

    while counter < 10
      move = gets.chomp.to_i
      if move > 9
        puts 'Invalid number, please try again :'
        counter -= 1
      else
        counter += 1
        move = gets.chomp.to_i
      end
    end
  end

  def update_invalid_move
    invalid_move << move
  end
end
