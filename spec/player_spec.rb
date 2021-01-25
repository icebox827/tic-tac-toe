describe PlayerMove do
  let(:board) { PlayerMove.new(board, player_token.to_s) }

  context 'win?' do
    let(:board) { player_token }
  end
end
