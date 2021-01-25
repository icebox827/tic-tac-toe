require_relative './../lib/player'

describe PlayerMove do
  player = PlayerMove.new
  board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  full_board = %w[X O O X X O O O X].sample
  valid_player_move = rand(1..9)
  invalid_player_move = [0, 10].sample
  string_player_move = %w[x c #].sample
  player_token = 'X'

  loss_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  win_board = %w[X X X X X X X X X]

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
    it 'should return true if player plays a number' do
      expect(player.valid_object?(valid_player_move)).to be true
    end
    it 'should return false if player plays any thing other than a number' do
      expect(player.valid_object?(string_player_move)).to be false
    end
    it 'should return true if player plays in an available spot' do
      expect(player.empty?(valid_player_move, board)).to be true
    end
    it 'should return false if player plays in an unavailable spot' do
      expect(player.empty?(valid_player_move, full_board)).to be false
    end
    it 'should return false for none WIN COMBOs' do
      expect(player.win?(loss_board, player_token)).to be false
    end
    it 'should return true for any WIN COMBOs' do
      expect(player.win?(win_board, player_token)).to be true
    end
    it 'should return true for any verical' do
      expect(player.win_vertical?(win_board, player_token)).to be true
    end
    it 'should return false for any verical' do
      expect(player.win_vertical?(loss_board, player_token)).to be false
    end
    it 'should return true for any horizontal' do
      expect(player.win_horizontal?(win_board, player_token)).to be true
    end
    it 'should return false for any horizontal' do
      expect(player.win_horizontal?(loss_board, player_token)).to be false
    end
    it 'should return true for any diagonal' do
      expect(player.win_diagonal?(win_board, player_token)).to be true
    end
    it 'should return false for any diagonal' do
      expect(player.win_diagonal?(loss_board, player_token)).to be false
    end
  end
end
