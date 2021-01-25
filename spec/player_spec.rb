# spec/tictactoe_spec.rb
require './../lib/player'

describe PlayerMove do
  let(:player_token) { PlayerMove.new(board, player_token) }

  context 'win?' do
    let(:player_token) { [1, 3] }

    it 'Tell if the player win' do
      expect(player_token).to eq player_token
    end
  end

  context 'win?' do
    let(:player_token) { [4, 3] }

    it 'Tell if the player win' do
      expect(player_token).to eq player_token
    end
  end

  context 'win?' do
    let(:player_token) { [7, 3] }

    it 'Tell if the player win' do
      expect(player_token).to eq player_token
    end
  end
end
