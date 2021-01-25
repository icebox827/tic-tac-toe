# ./spec/player_spec.rb
require './lib/player'

describe PlayerMove do
  describe '#win' do
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

    context 'win?' do
      let(:player_token) { [[2], [5], [8]] }

      it 'Tell if the player win' do
        expect(player_token).to eq player_token
      end
    end

    context 'win?' do
      let(:player_token) { [[3], [6], [9]] }

      it 'Tell if the player win' do
        expect(player_token).to eq player_token
      end
    end

    context 'win?' do
      let(:player_token) { [[1], [5], [9]] }

      it 'Tell if the player win' do
        expect(player_token).to eq player_token
      end
    end

    context 'win?' do
      let(:player_token) { [[3], [5], [7]] }

      it 'Tell if the player win' do
        expect(player_token).to eq player_token
      end
    end

    context 'win?' do
      let(:player_token) { [[1], [4], [7]] }

      it 'Tell if the player win' do
        expect(player_token).to eq player_token
      end
    end
  end
end
