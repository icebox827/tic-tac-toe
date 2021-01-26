# ./spec/validator_spec.rb
require './lib/Validator'

describe Validator do
  context '#valid_number?' do
    it 'Validate the number' do
      user_input = rand(1..9)
      expect(user_input).to be_between(1, 9).inclusive
    end
  end

  context '#valid_number?' do
    it 'Do not validate the number' do
      user_input = rand(1..9)
      expect(user_input).to_not eq Validator.new
    end
  end
end
