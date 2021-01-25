# spec/tictactoe_spec.rb
require './../lib/board'
require './../lib/player'

describe Board do
  context 'empty_board' do
    it 'create a new board' do
      board = Board.new
      expect(board).to eq board
    end
  end
end

describe PlayerMove do
  let(:board) { PlayerMove.new(board, player_token.to_s) }

  context 'win?' do
    let(:board) { player_token } 
  end
end
