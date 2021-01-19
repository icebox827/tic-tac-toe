class Validators
  def tie?(board)
    board.slice(1, 10).include? ' '
  end
end
