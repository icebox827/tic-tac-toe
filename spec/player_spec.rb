require_relative './../lib/player'

describe PlayerMove do
  player = PlayerMove.new
  board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  player_token = %w[X O].sample
  valid_player_move = [1, 2, 3, 4, 5, 6, 7, 8, 9].sample
  invalid_player_move = [0, 10].sample

  describe '#methods' do
    it 'should intantiate a class' do
      expect(player).to be_a_kind_of Object
    end
    it 'should return true unless a tie' do
      expect(player.tie?(board)).to be true
    end
    it 'should return true if player plays between 1 and 9 inclusive' do
      expect(player.valid_number?(valid_player_move)).to be true
    end
    it 'should return false if player plays less than 1 or greater than 9' do
      expect(player.valid_number?(invalid_player_move)).to be false
    end
  end
end
