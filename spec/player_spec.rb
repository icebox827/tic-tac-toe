require_relative './../lib/player'

describe PlayerMove do
  player = PlayerMove.new
  board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  player_input = %w[X O].sample

  describe '#methods' do
    it 'should intantiate a class' do
      expect(player).to be_a_kind_of Object
    end
    it 'should return true unless a tie' do
      expect(player.tie?(board)).to be true
    end
  end
end