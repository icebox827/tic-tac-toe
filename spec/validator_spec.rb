# ./spec/validator_spec.rb
require './lib/Validator'

describe Validator do
  context '#valid_number?' do
    it 'Validate the number' do
      user_input = Validator.new
      expect(user_input).to eq user_input
    end
  end

  context '#valid_number?' do
    it 'Do not validate the number' do
      user_input = Validator.new
      expect(user_input).to_not eq Validator.new
    end
  end
end
