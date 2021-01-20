class Validator
  def valid_number(user_input)
    false if user_input > 9 || user_input < 1
    true
  end

  def valid_object(user_input)
    true if user_input.to_i.instance_of?(Integer)
    false
  end
end
