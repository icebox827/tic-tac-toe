require_relative './../lib/board'

describe Board do
  board = Board.new
  empty_board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

  describe '#board' do
    it 'should intantiate a board class' do
      expect(board).to be_a_kind_of Object
    end
    it 'should return a board' do
      expect(board.empty_board(empty_board)).to be_an_instance_of Array
    end
  end
end
