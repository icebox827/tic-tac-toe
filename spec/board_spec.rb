# spec/tictactoe_spec.rb
require './../lib/board'

describe Board do
  context 'empty_board' do
    it 'create a new board' do
      board = Board.new
      expect(board).to eq board
    end
  end
end
