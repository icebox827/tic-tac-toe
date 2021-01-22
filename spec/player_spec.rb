require_relative './../lib/player'

describe PlayerMove do
  player = PlayerMove.new
  describe '#methods' do
    it 'should intantiate a class' do
      expect(player).to be_a_kind_of Object
    end
  end
end